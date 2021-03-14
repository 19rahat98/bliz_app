import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:bliz/logic_block/api/http_manager.dart';
import 'package:bliz/logic_block/models/result_api_model.dart';
import 'package:bliz/logic_block/models/user_model.dart';
import 'package:bliz/logic_block/repository/login_repository.dart';

import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(InitialLoginState());
  final UserRepository userRepository = UserRepository();
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  @override
  Stream<LoginState> mapEventToState(event) async* {
    ///Event for login
    if (event is OnLogin) {
      ///Notify loading to UI
      yield LoginLoading();
      Map<String, dynamic> params = {
        "phone": event.userPhoneNumber,
        "password": event.password,
      };

      ///Fetch API via repository
      final ResultApiModel result = await userRepository.loginUser(params);

      ///Case API fail but not have token
      if (result.success) {

        Map<String, dynamic> userToken = {
          "token": result.token,
        };

        final ResultApiModel userData = await userRepository.getUser(userToken);
        print(userData.data);
        print('++++++++');
        if(userData.success){
          ///Login API success
          //TODO mukan kotaktan surau!!!!!
          final User user = User.fromJson(userData.data.first);
          try {
            ///Set token network
            httpManager.baseOptions.headers["Authorization"] =
                "Bearer " + result.token;
            ///Begin save user on SharedPreferences
            final SharedPreferences prefs = await _prefs;
            await prefs.setString("token", user.token);
            print('LoginSuccess');
            ///Notify loading to UI
            yield LoginSuccess();
          } catch (error) {
            ///Notify loading to UI
            yield LoginFail(code: error.toString());
          }
        }

      } else {
        ///Notify loading to UI
        print(result.message);
        yield LoginFail(code: result.message);
      }
    }
    if (event is DeleteUser){
      yield LoginLoading();

      final SharedPreferences cp = await _prefs;
      Map<String, dynamic> params = {
        "token": cp.getString("token"),
        "password": event.password,
      };

      final ResultApiModel result = await userRepository.deleteUserRepository(params);

      if (result.success)  {
        try {
          cp.remove("token");
          yield DeleteUserSuccess();
        } catch (error) {
          ///Notify loading to UI
          print(error);
          yield LoginFail(code: "Error ketti shared pref");
        }

      }
      else if(!result.success){
        yield LoginFail(code: result.message.toString());
      }
      // if(result.message == "Не найден пользователь" || result.message =="Не совпадают пароль"){
      //   yield UserDataFail(code: result.message.toString());
      // }

    }
    //TODO potom udalit
    if(event is GetToken){
      final SharedPreferences prefs = await _prefs;
      final token = prefs.getString("token");
      print(token);
    }
    ///Event for logout
    if (event is OnLogout) {
      yield LogoutLoading();
      try {
        ///Begin start AuthBloc Event OnProcessLogout
        httpManager.baseOptions.headers = {};
        ///Begin delete user on SharedPreferences
        final SharedPreferences prefs = await _prefs;
        await prefs.remove("token");
        ///Notify loading to UI
        yield LogoutSuccess();
      } catch (error) {
        ///Notify loading to UI
        yield LogoutFail(error.toString());
      }
    }
  }
}

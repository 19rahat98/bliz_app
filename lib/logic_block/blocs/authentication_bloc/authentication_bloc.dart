import 'dart:async';
import 'package:bliz/logic_block/api/http_manager.dart';
import 'package:bliz/logic_block/models/user_model.dart';
import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:bliz/logic_block/models/result_api_model.dart';
import 'package:bliz/logic_block/repository/login_repository.dart';

import 'bloc.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(InitialAuthenticationState());
  final UserRepository userRepository = UserRepository();
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Stream<AuthenticationState> mapEventToState(event) async* {
    final SharedPreferences prefs = await _prefs;
    if (event is OnRegister) {
      yield AuthenticationBeginCheck();
      Map<String, dynamic> params = {
        "fullName": event.userFullName,
        "email": event.userEmail,
        "phone": event.userPhoneNumber,
        "password": event.userPassword,
        "companyName": "event.companyName",
        "companyType": 1,
        "bin": 31231231231,
        /*"companyName": event.companyName,
        "companyType": event.companyType,
        "bin": event.bin,*/
      };

      ///Fetch register
      final ResultApiModel result = await userRepository.regUser(params);
      print(result.success);

      ///Case success
      if (result.success) {
        String token = result.token;
        await prefs.setString("token", token);

        ///Notify loading to UI
        yield AuthenticationSuccess();
      } else {
        ///Notify loading to UI
        yield AuthenticationFail(code: result.message);
      }
    }
    if (event is CheckSingInUser) {
      yield AuthenticationBeginCheck();
      final userToken = prefs.getString("token");
      Map<String, dynamic> token = {
        "token": userToken,
      };
      if (userToken != null) {
        final ResultApiModel userData = await userRepository.getUser(token);
        print(userData.data);
        if (userData.success) {
          ///Login API success
          try {
            final User user = User.fromJson(userData.data.first);
            print(user.id);
            print(user.email);

            ///Set token network
            httpManager.baseOptions.headers["Authorization"] =
                "Bearer " + userToken;
            yield AuthenticationSuccess(userData: user);
            print('success');
          } catch (error) {
            yield AuthenticationFail(code: error.toString());
          }
        } else {
          yield AuthenticationFail(code: 'User not found');
        }
      } else {
        yield AuthenticationFail(code: 'User not found');
      }
    }
  }
}

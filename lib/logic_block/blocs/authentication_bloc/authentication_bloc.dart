import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:bliz/logic_block/models/result_api_model.dart';
import 'package:bliz/logic_block/repository/login_repository.dart';

import 'bloc.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(InitialAuthenticationState());
  final UserRepository registrationRepository = UserRepository();
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Stream<AuthenticationState> mapEventToState(event) async* {
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
      final ResultApiModel result = await registrationRepository.regUser(params);
      print(result.success);
      ///Case success
      if (result.success) {
        String token = result.token;
        final SharedPreferences prefs = await _prefs;
        await prefs.setString("token", token);
        ///Notify loading to UI
        yield AuthenticationSuccess();
      } else {
        ///Notify loading to UI
        yield AuthenticationFail(code: result.message);
      }
    }
  }
}

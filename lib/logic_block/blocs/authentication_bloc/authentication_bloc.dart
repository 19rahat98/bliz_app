import 'dart:async';

import 'package:bliz/logic_block/models/result_api_model.dart';
import 'package:bliz/logic_block/repository/login_repository.dart';
import 'package:bloc/bloc.dart';

import 'bloc.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(InitialAuthenticationState());
  final UserRepository registrationRepository = UserRepository();

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
        ///Notify loading to UI
        yield AuthenticationSuccess();
      } else {
        ///Notify loading to UI
        yield AuthenticationFail(code: result.message);
      }
    }
  }
}

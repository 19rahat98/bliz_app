abstract class LoginEvent {}

class OnLogin extends LoginEvent {
  final String userPhoneNumber;
  final String password;

  OnLogin({this.userPhoneNumber, this.password});
}

class GetToken extends LoginEvent{}

class OnLogout extends LoginEvent {
  OnLogout();
}

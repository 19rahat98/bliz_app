import 'package:bliz/logic_block/models/user_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class AuthenticationState {}

class InitialAuthenticationState extends AuthenticationState {}

class AuthenticationBeginCheck extends AuthenticationState {}

class AuthenticationSuccess extends AuthenticationState {
  final User userData;

  AuthenticationSuccess({this.userData});
}

class AuthenticationFail extends AuthenticationState {
  final String code;

  AuthenticationFail({this.code});

}

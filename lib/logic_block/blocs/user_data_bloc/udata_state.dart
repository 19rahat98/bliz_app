import 'package:bliz/logic_block/models/user_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class UserDataState {}

class InitialUserDataState extends UserDataState {}

class UserDataLoading extends UserDataState {}

class UserDataFail extends UserDataState {
  final String code;
  UserDataFail({this.code});
}

class UserDataSuccess extends UserDataState {
  final User userdata;
  UserDataSuccess({this.userdata});
}


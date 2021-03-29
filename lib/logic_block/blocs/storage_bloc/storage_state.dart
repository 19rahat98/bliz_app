import 'package:bliz/logic_block/models/user_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class AddStorageState {}

class InitialAddStorageState extends AddStorageState {}

class AddStorageLoading extends AddStorageState {}

class AddStorageFail extends AddStorageState {
  final String code;
  AddStorageFail({this.code});
}

class AddingStorageSuccess extends AddStorageState {}


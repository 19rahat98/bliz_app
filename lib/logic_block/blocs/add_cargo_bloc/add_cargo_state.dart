import 'package:bliz/logic_block/models/user_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class AddCargoState {}

class InitialAddACargoState extends AddCargoState {}

class AddCargoLoading extends AddCargoState {}

class AddCargoFail extends AddCargoState {
  final String code;
  AddCargoFail({this.code});
}

class AddCargoSuccess extends AddCargoState {}


import 'package:bliz/logic_block/models/user_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class SpecialMachineryState {}

class InitialAddASpecialMachineryState extends SpecialMachineryState {}

class AddSpecialMachineryLoading extends SpecialMachineryState {}

class AddSpecialMachineryFail extends SpecialMachineryState {
  final String code;
  AddSpecialMachineryFail({this.code});
}

class AddingSpecialMachinerySuccess extends SpecialMachineryState {}


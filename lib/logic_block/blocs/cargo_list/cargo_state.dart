import 'package:meta/meta.dart';

@immutable
abstract class CargoState {}

class CargoSuccess extends CargoState {
  final List<dynamic> cargo_list;

  CargoSuccess({this.cargo_list});
}

class InitialCargoState extends CargoState {}

class CargoFail extends CargoState {
  final String code;

  CargoFail({this.code});
}

class CargoLoading extends CargoState {}
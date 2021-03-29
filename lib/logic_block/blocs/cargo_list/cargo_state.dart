import 'package:bliz/logic_block/models/cargoData.dart';
import 'package:bliz/logic_block/models/cargo_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class CargoState {}

class CargoSuccess extends CargoState {
  final List<Data> cargoList;

  CargoSuccess({this.cargoList});
}

class InitialCargoState extends CargoState {}

class CargoFail extends CargoState {
  final String code;

  CargoFail({this.code});
}

class CargoLoading extends CargoState {}
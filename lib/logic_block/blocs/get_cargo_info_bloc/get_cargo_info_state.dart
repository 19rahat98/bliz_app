import 'package:bliz/logic_block/models/cargoData.dart';
import 'package:bliz/logic_block/models/cargo_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class CargoInfoState {}

class CargoInfo extends CargoInfoState {
  final CargoData cargoInfo;

  CargoInfo({this.cargoInfo});
}

class InitialCargoInfoState extends CargoInfoState {}

class CargoInfoFail extends CargoInfoState {
  final String code;

  CargoInfoFail({this.code});
}

class CargoInfoLoading extends CargoInfoState {}
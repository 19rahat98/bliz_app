import 'package:bliz/logic_block/models/cargo_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class RequestCargoState {}

class InitialRequestCargoState extends RequestCargoState {}

class RequestCargoLoading extends RequestCargoState {}

class RequestCargoSuccess extends RequestCargoState {}

class RequestCargoLoadFail extends RequestCargoState {
  final String message;

  RequestCargoLoadFail(this.message);
}

class FirstStepRequestCargoSuccess extends RequestCargoState {}

class SecondStepRequestCargoSuccess extends RequestCargoState {}

class DriverChoseSuccess extends RequestCargoState {}

class LastStepRequestCargoSuccess extends RequestCargoState {}

class OrderCanceledSuccess extends RequestCargoState {}

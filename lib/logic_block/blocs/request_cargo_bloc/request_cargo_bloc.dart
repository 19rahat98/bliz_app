import 'bloc.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:bloc/bloc.dart';
import 'package:bliz/logic_block/models/cargo_model.dart';
import 'package:bliz/logic_block/models/result_api_model.dart';
import 'package:bliz/logic_block/repository/cargo_repository.dart';


class RequestCargoBloc extends Bloc<RequestCargoEvent, RequestCargoState> {
  RequestCargoBloc() : super(InitialRequestCargoState());
  final CargoRepository cargoRepository = CargoRepository();
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Stream<RequestCargoState> mapEventToState(RequestCargoEvent event) async* {
    if (event is SendRequest) {
      yield RequestCargoLoading();
      final SharedPreferences cp = await _prefs;

      ///Fetch API
      final ResultApiModel response = await cargoRepository.sendRequestToTakeCargo(
        {"token": cp.getString('token'), "post_id": event.postId, "price": event.price, "currency": event.currency},
      );
      if (response.success) {
        ///Sync UI
        yield FirstStepRequestCargoSuccess();
      } else {
        yield RequestCargoLoadFail(response.message);
      }
    }
    if (event is AcceptPost) {
      yield RequestCargoLoading();
      final SharedPreferences cp = await _prefs;

      ///Fetch API
      final ResultApiModel response = await cargoRepository.acceptPost(
        {"token": cp.getString("token"), "order_id": event.orderId},
      );
      if (response.success) {
        yield SecondStepRequestCargoSuccess();
      } else {
        yield RequestCargoLoadFail(response.message);
      }
    }
    if (event is ChoseDriver) {
      yield RequestCargoLoading();
      final SharedPreferences cp = await _prefs;

      ///Fetch API
      final ResultApiModel response = await cargoRepository.selectDriver(
        {"token": cp.getString("token"), "order_id": event.orderId},
      );
      if (response.success) {
        yield DriverChoseSuccess();
      } else {
        yield RequestCargoLoadFail(response.message);
      }
    }
    if (event is AssignDriver) {
      yield RequestCargoLoading();
      final SharedPreferences cp = await _prefs;

      ///Fetch API
      final ResultApiModel response = await cargoRepository.giveOrderForDriver(
        {"token": cp.getString("token"), "order_id": event.orderId, "employee_id": event.driverId},
      );
      if (response.success) {
        yield LastStepRequestCargoSuccess();
      } else {
        yield RequestCargoLoadFail(response.message);
      }
    }

    if (event is CancelOrder) {
      yield RequestCargoLoading();
      final SharedPreferences cp = await _prefs;
      ///Fetch API
      final ResultApiModel response = await cargoRepository.cancelOrder(
        {"token": cp.getString("token"), "order_id": event.orderId});
      if (response.success) {
        yield OrderCanceledSuccess();
      } else {
        yield RequestCargoLoadFail(response.message);
      }
    }

  }
}

import 'bloc.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:bloc/bloc.dart';
import 'package:bliz/logic_block/models/result_api_model.dart';
import 'package:bliz/logic_block/models/application_model.dart';
import 'package:bliz/logic_block/repository/application_repository.dart';

class InWorkOrdersBloc extends Bloc<InWorkOrdersEvent, InWorkOrdersState> {
  InWorkOrdersBloc() : super(InitialInWorkOrdersListState());
  final ApplicationRepository applicationRepository = ApplicationRepository();
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Stream<InWorkOrdersState> mapEventToState(event) async* {
    if (event is GetInWorkOrdersList) {
      yield InWorkOrdersListLoading();
      final SharedPreferences cp = await _prefs;

      ///Fetch register
      final ResultApiModel executorInWork = await applicationRepository.executorOrdersInWork( {"token": cp.getString("token"),});
      final ResultApiModel customerInWork = await applicationRepository.customerOrdersInWork( {"token": cp.getString("token"),});
      ///Case success
      if (executorInWork.success && executorInWork.data != [] && customerInWork.success && customerInWork.data != null) {
        final Iterable iterableList = executorInWork?.data ?? [];
        final applicationList = iterableList.map((item){
          return Application.fromJson(item);
        }).toList();
        final Iterable iterableInWorkList = customerInWork?.data ?? [];
        final customerOrdersInHoldList = iterableInWorkList.map((item){
          return Application.fromJson(item);
        }).toList();
        //final Data cargoData = Data.fromJson(result.data.first);
        //print(cargoData.user.first.fullName);
        ///Notify loading to UI
        print(applicationList.first.orderId);
        print(customerOrdersInHoldList.first.orderId);
        yield InWorkOrdersListSuccess(applicationInWorkList: applicationList, customerOrdersInWorkList: customerOrdersInHoldList);
      } else {
        ///Notify loading to UI
        yield InWorkOrdersListFail(code: executorInWork.message);
      }
    }
  }
}

import 'bloc.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:bloc/bloc.dart';
import 'package:bliz/logic_block/models/result_api_model.dart';
import 'package:bliz/logic_block/models/application_model.dart';
import 'package:bliz/logic_block/repository/application_repository.dart';

class InProgressApplicationBloc extends Bloc<InProgressApplicationEvent, InProgressApplicationState> {
  InProgressApplicationBloc() : super(InitialInProgressApplicationListState());
  final ApplicationRepository applicationRepository = ApplicationRepository();
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Stream<InProgressApplicationState> mapEventToState(event) async* {
    if (event is GetInProgressApplicationList) {
      yield InProgressApplicationListLoading();
      final SharedPreferences cp = await _prefs;

      ///Fetch register
      final ResultApiModel resultInHold = await applicationRepository.executorOrdersInHold( {"token": cp.getString("token"),});
      final ResultApiModel resultInWork = await applicationRepository.customerOrdersInHold( {"token": cp.getString("token"),});
      ///Case success
      if (resultInHold.success && resultInHold.data != [] && resultInWork.success && resultInWork.data != null) {
        final Iterable iterableList = resultInHold?.data ?? [];
        final applicationList = iterableList.map((item){
          return Application.fromJson(item);
        }).toList();
        final Iterable iterableInWorkList = resultInWork?.data ?? [];
        final customerOrdersInHoldList = iterableInWorkList.map((item){
          return Application.fromJson(item);
        }).toList();
        //final Data cargoData = Data.fromJson(result.data.first);
        //print(cargoData.user.first.fullName);
        ///Notify loading to UI
        print(applicationList.first.orderId);
        print(customerOrdersInHoldList.first.orderId);
        yield InProgressApplicationListSuccess(applicationInHoldList: applicationList, customerOrdersInHoldList: customerOrdersInHoldList);
      } else {
        ///Notify loading to UI
        yield InProgressApplicationListFail(code: resultInHold.message);
      }
    }
  }
}

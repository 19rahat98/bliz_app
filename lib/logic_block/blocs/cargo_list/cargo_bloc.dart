import 'dart:async';

import 'package:bliz/logic_block/models/cargo_model.dart';
import 'package:bliz/logic_block/models/result_api_model.dart';
import 'package:bliz/logic_block/repository/cargo_repository.dart';
import 'package:bliz/logic_block/repository/login_repository.dart';
import 'package:bloc/bloc.dart';

import 'bloc.dart';

class CargoBloc extends Bloc<CargoEvent, CargoState> {
  CargoBloc() : super(InitialCargoState());
  final CargoRepository cargoRepository = CargoRepository();

  @override
  Stream<CargoState> mapEventToState(event) async* {
    if (event is GetCargoFromDb) {
      yield CargoLoading();
      Map<String, dynamic> params = {
        "category_id": event.id,
        "page": 2,
      };

      ///Fetch register
      final ResultApiModel result = await cargoRepository.getCargoList(params);
      print(result.success);
      print(result.data);
      ///Case success
      if (result.success && result.data != []) {
        final Iterable iterableList = result?.data ?? [];
        final listCategoriesItems = iterableList.map((item){
          return Data.fromJson(item);
        }).toList();
        for(var item in listCategoriesItems){
          print('hg');
          print(item.details.first.from.toString());
        }
        //final Data cargoData = Data.fromJson(result.data.first);
        //print(cargoData.user.first.fullName);
        ///Notify loading to UI
        yield CargoSuccess(cargo_list: listCategoriesItems);
      } else {
        ///Notify loading to UI
        yield CargoFail(code: result.message);
      }
    }
  }
}

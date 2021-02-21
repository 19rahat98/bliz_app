import 'dart:async';
import 'package:bliz/logic_block/blocs/add_cargo_bloc/add_cargo_event.dart';
import 'package:bliz/logic_block/blocs/add_cargo_bloc/add_cargo_state.dart';
import 'package:bliz/logic_block/blocs/user_data_bloc/udata_state.dart';
import 'package:bliz/logic_block/repository/cargo_repository.dart';
import 'package:bliz/logic_block/repository/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:bliz/logic_block/models/result_api_model.dart';
import 'package:bliz/logic_block/models/user_model.dart';
import 'package:bloc/bloc.dart';


class AddCargoBloc extends Bloc<AddingCargoEvent, AddCargoState> {
  AddCargoBloc() : super(InitialAddACargoState());
  final CargoRepository addCargoRepository = CargoRepository();
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  @override
  Stream<AddCargoState> mapEventToState(event) async* {
    ///Event for login
    if (event is AddCargo) {
      ///Notify loading to UI
      yield AddCargoLoading();

      final SharedPreferences cp = await _prefs;

      print('asdasdasdadas');
      print(cp.getString("token"));

      Map<String, dynamic> params = {
        "token": cp.getString("token"),
        "category_id": event.categoryId,
        "sub_id": event.subCategoryId,
        "title": event.title,
        "from": event.from,
        "to": event.toOrder,
        "volume": event.volume,
        "net": event.net,
        "start_date": event.startDate,
        "end_date": event.endDate,
        "documents[]": event.documents,
        "price": event.price,
        "price_type": event.priceType,
        "payment_type": event.paymentType,
      };
      print(params.runtimeType);
      print('asdasdasdas');
      ///Fetch API via repository
      final ResultApiModel result = await addCargoRepository.addNewCargo(params);

      ///Case API fail but not have token
      if (result.success)  {
        try {
          yield AddCargoSuccess();
        } catch (error) {
          ///Notify loading to UI
          yield AddCargoFail(code: error.toString());
        }
      } else {
        ///Notify loading to UI
        print(result.message);
        yield AddCargoFail(code: result.message);
      }
    }


  }
}

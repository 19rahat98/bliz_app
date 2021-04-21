import 'dart:io';
import 'dart:async';
import 'dart:typed_data';
import 'package:bliz/logic_block/blocs/bloc.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:bliz/logic_block/repository/storage_repository.dart';


class AddNewStorageBloc extends Bloc<AddingStorageEvent, AddStorageState> {
  AddNewStorageBloc() : super(InitialAddStorageState());
  final StorageRepository storageRepository = StorageRepository();
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  @override
  Stream<AddStorageState> mapEventToState(event) async* {
    ///Event for AddNewStorage
    if (event is AddNewStorage) {
      ///Notify loading to UI
      yield AddStorageLoading();

      final SharedPreferences cp = await _prefs;

      FormData formData = FormData.fromMap({
        "token": cp.getString('token'),
        "area": event.area,
        "totalArea": event.totalArea,
        "class": event.className,
        "type": event.type,
        "year": event.year,
        "city_id": event.cityId,
        "address": event.address,
        "floor": event.floor,
        "parking_car": event.parkingCar,
        "parking_cargo": event.parkingCargo,
        "floor_type": event.floorType,
        "floor_load": event.floorLoad,
        "image": await MultipartFile.fromFile(event.images.path, filename:event.images.path),

        "fire_system": ['1','2'],
        "ventilation": event.ventilation,
        "fire_alarm": event.fireAlarm,
        "security_alarm": event.securityAlarm,
        "storage_transport_area": event.storageTransportArea,
        "inline_block": event.inlineBlock,
        "infrastructure": event.infrastructure,
        "price": event.price,
        "price_type": event.priceType,
        "currency": event.currency,
        "rack": event.rack,
        "ramp": event.ramp,
      });

      FormData formData2 = FormData.fromMap({
        "token": cp.getString('token'),
        "area": '23',
        "totalArea": '23',
        "class": 'A',
        "type": 'Сухой',
        "year": '1957',
        "city_id": event.cityId,
        "address": event.address,
        "floor": '1',
        "parking_car": '23',
        "parking_cargo": '23',
        "floor_type": 'Бетонный',
        "floor_load": 'Бетонный',
        "image": await MultipartFile.fromFile(event.images.path, filename:event.images.path),

        "fire_system": ['1','2'],
        "ventilation": ['1'],
        "fire_alarm": '23',
        "security_alarm": '23',
        "storage_transport_area": '23',
        "inline_block": '12',
        "infrastructure": 'Простой склад',
        "price": '2324',
        "price_type": event.priceType,
        "currency": 1,
        "rack": '12',
        "ramp": '12',
      });


      Dio dio = Dio();
      final response = await dio.post(
        'https://test.money-men.kz/api/addStorage',
        data: formData2,
      );
      ///Fetch API via repository
      /*final ResultApiModel result = await addNewEquipmentRepository.addNewEquipment(params);*/

      ///Case API fail but not have token
      if (response.data['success'])  {
        try {
          yield AddingStorageSuccess();
        } catch (error) {
          ///Notify loading to UI
          yield AddStorageFail(code: error.toString());
        }
      } else {
        ///Notify loading to UI
        print(response.data['message']);
        yield AddStorageFail(code: response.data['message']);
      }
    }


  }
}

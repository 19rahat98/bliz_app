import 'dart:io';
import 'dart:async';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:path/path.dart';
import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:bliz/logic_block/models/result_api_model.dart';
import 'package:bliz/logic_block/repository/equipment_repository.dart';
import 'package:bliz/logic_block/blocs/add_special_machinery_bloc/bloc.dart';


class AddSpecialMachineryBloc extends Bloc<AddingSpecialMachineryEvent, SpecialMachineryState> {
  AddSpecialMachineryBloc() : super(InitialAddASpecialMachineryState());
  final EquipmentRepository addNewEquipmentRepository = EquipmentRepository();
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  @override
  Stream<SpecialMachineryState> mapEventToState(event) async* {
    ///Event for login
    if (event is AddSpecialMachinery) {
      ///Notify loading to UI
      yield AddSpecialMachineryLoading();

      final SharedPreferences cp = await _prefs;

      FormData formData = FormData.fromMap({
        "token": cp.getString('token'),
        "name": event.name,
        "city_id": event.cityId,
        "address": event.address,
        "net": event.net,
        "width": event.width,
        "price": event.price,
        "year": event.year,
        "power": event.power,
        "description": event.description,
        "type_equipment": event.typeEquipment,
        "currency": event.currency,
        "equipment_rent": event.equipmentRent,
        "image": await MultipartFile.fromFile(event.images.path, filename:event.images.path),

        "height": event.height,
        "deep": event.deep,
        "rise": event.rise,
        "type_blade": event.typeBlade,
        "category_id": 2,
      });

      Map<String, dynamic> params = {
        'token': '9d0a84b5bbf4f701ef3dd41150424ab2d6ea36b7',
        "name": event.name,
        "city_id": event.cityId,
        "address": event.address,
        "net": event.net,
        "width": event.width,
        "price": event.price,
        "year": event.year,
        "power": event.power,
        "description": event.description,
        "type_equipment": '1',
        "currency": event.currency,
        "equipment_rent": event.equipmentRent,
        //"image":  await MultipartFile.fromFile(event.images.path, filename:fileName),

        "height": event.height,
        "deep": event.deep,
        "rise": event.rise,
        "type_blade": event.typeBlade,
        "category_id": event.categoryId,
      };


      Dio dio = Dio();
      final response = await dio.post(
        'https://test.money-men.kz/api/addEquipment',
        data: formData,
      );
      ///Fetch API via repository
      /*final ResultApiModel result = await addNewEquipmentRepository.addNewEquipment(params);*/

      ///Case API fail but not have token
      if (response.data['success'])  {
        try {
          yield AddingSpecialMachinerySuccess();
        } catch (error) {
          ///Notify loading to UI
          yield AddSpecialMachineryFail(code: error.toString());
        }
      } else {
        ///Notify loading to UI
        print(response.data['message']);
        yield AddSpecialMachineryFail(code: response.data['message']);
      }
    }


  }
}

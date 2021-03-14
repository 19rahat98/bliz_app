import 'dart:async';
import 'dart:convert';

import 'package:bliz/logic_block/api/http_manager.dart';
import 'package:bliz/logic_block/blocs/user_data_bloc/udata_event.dart';
import 'package:bliz/logic_block/models/result_api_model.dart';

class Api {
  ///URL API
  static const String REGISTRATION_USER = "/entityRegistration";
  static const String LOGIN_USER = "/login";
  static const String GET_USER = "/getProfile";
  static const String ADD_NEW_CARGO = "/newAddPost";
  static const String GET_COUNTRY_LIST = "/country";
  static const String GET_CITY_LIST = "/city";
  static const String GET_TYPE_OF_DOCUMENTS = "/postDocuments";
  static const String GET_TYPE_OF_PAYMENT = "/getPaymentType";
  static const String GET_TYPE_OF_CURRENCY = "/getCurrency";
  static const String GET_TYPE_OF_POST_LOADING = "/postLoading";
  static const String GET_CARGO_LIST = "/newGetPost";
  static const String GET_EQUIPMENT_CATEGORY = "/getEquipmentCategory";
  static const String GET_EQUIPMENT_RENT_TYPE = "/getEquipmentRent";
  static const String GET_EQUIPMENT_TYPE = "/getEquipmentType";
  static const String DELETE_USER = "/deleteAccount";

  static Future<dynamic> getEquipmentCategory() async{
    final result = await httpManager.get(
      url: GET_EQUIPMENT_CATEGORY,
    );
    return ResultApiModel.fromJson(result) ;
  }
  static Future<dynamic> getEquipmentType() async{
    final result = await httpManager.get(
      url: GET_EQUIPMENT_TYPE,
    );
    return ResultApiModel.fromJson(result) ;
  }

  static Future<dynamic> getEquipmentRentType() async{
    final result = await httpManager.get(
      url: GET_EQUIPMENT_RENT_TYPE,
    );
    return ResultApiModel.fromJson(result) ;
  }

  static Future<dynamic> deleteUser(params) async{
    final result = await httpManager.get(
      url: DELETE_USER,
      params: params,
    );
    return ResultApiModel.fromJson(result) ;
  }

  static Future<dynamic> getCargoList(params) async{
    final result = await httpManager.get(
      url: GET_CARGO_LIST,
      params: params,
    );
    print(result);
    return ResultApiModel.fromJson(result);
  }

  static Future<dynamic> getPostLoadingType() async{
    final result = await httpManager.get(
      url: GET_TYPE_OF_POST_LOADING,
    );
    return ResultApiModel.fromJson(result) ;
  }

  static Future<dynamic> getCurrencyType() async{
    final result = await httpManager.get(
      url: GET_TYPE_OF_CURRENCY,
    );
    return result;
  }

  static Future<dynamic> getPaymentType() async{
    final result = await httpManager.get(
      url: GET_TYPE_OF_PAYMENT,
    );
    return result;
  }


  static Future<dynamic> getDocumentsList() async{
    final result = await httpManager.get(
      url: GET_TYPE_OF_DOCUMENTS,
    );
    return ResultApiModel.fromJson(result);
  }

  static Future<dynamic> getCityList(params) async{
    final result = await httpManager.get(
      url: GET_CITY_LIST,
      params: params,
    );
    return result;
  }

  static Future<dynamic> getCountryList() async{
    final result = await httpManager.get(
      url: GET_COUNTRY_LIST,
    );
    return result;
  }

  static Future<dynamic> addNewCargo(params) async{
    final result = await httpManager.get(
      url: ADD_NEW_CARGO,
      params: params,
    );
    print(result);
    print('asdasdsdasd');
    return ResultApiModel.fromJson(result);
  }

  static Future<dynamic> getUser(params) async{
    final result = await httpManager.get(
      url: GET_USER,
      params: params,
    );
    return ResultApiModel.fromJson(result);
  }

  static Future<dynamic> userLogin(params) async{
    final result = await httpManager.post(
      url: LOGIN_USER,
      data: params,
    );
    return ResultApiModel.fromJson(result);
  }

  static Future<dynamic> userRegistration(params) async{
    final result = await httpManager.post(
      url: REGISTRATION_USER,
      data: params,
    );
    return ResultApiModel.fromJson(result);
  }

  ///Singleton factory
  static final Api _instance = Api._internal();

  factory Api() {
    return _instance;
  }

  Api._internal();
}


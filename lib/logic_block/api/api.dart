import 'dart:async';
import 'dart:convert';

import 'package:bliz/logic_block/api/http_manager.dart';
import 'package:bliz/logic_block/models/result_api_model.dart';

class Api {
  ///URL API
  static const String REGISTRATION_USER = "/entityRegistration";
  static const String LOGIN_USER = "/login";
  static const String GET_USER = "/getProfile";
  static const String ADD_NEW_CARGO = "/newAddPost";

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


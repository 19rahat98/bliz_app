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
  static const String ADD_NEW_EQUIPMENT = "/addEquipment";
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
  static const String GET_ALL_EQUIPMENT = "/getAllEquipment";
  static const String GET_COMPANY_TYPE = "/getCompanyTypes";
  static const String ADD_NEW_STORAGE = "/addStorage";
  static const String GET_INFO_BY_ID = "/getPostByID/";
  static const String GET_AUCTION_LIST = "/getAllAuction/";
  //TODO ADD NEW LINK TO STORAGE LIST
  static const String GET_ALL_STORAGE_LIST = "/getCompanyTypes";
  static const String SEND_REQUEST_TO_TAKE_CARGO = "/sendRequest";
  static const String ACCEPT_POST = "/acceptPost";
  static const String SELECT_DRIVER = "/selectDriver";
  static const String GIVE_ORDER_FOR_DRIVER = "/giveOrderForDriver";
  static const String CANCEL_ORDER = "/cancelOrder";
  static const String EXECUTOR_ORDERS_IN_HOLDER = "/executorOrdersInHold";
  static const String EXECUTOR_ORDERS_IN_WORK = "/executorOrdersInWork";
  static const String CUSTOMER_ORDERS_IN_HOLDER = "/customerOrdersInHold";
  static const String CUSTOMER_ORDERS_IN_WORK = "/customerOrdersInWork";

  static const String GET_WISHLIST = "/getListCargoFavourites";
  static const String SAVE_WISHLIST = "/addPostFavourites";
  static const String DELETE_WISHLIST = "/cancelPostFavourites";

  static Future<dynamic> executorOrdersInHold(params) async {
    final result = await httpManager.get(url: EXECUTOR_ORDERS_IN_HOLDER, params: params);
    return ResultApiModel.fromJson(result);
  }
  static Future<dynamic> customerOrdersInHold(params) async {
    final result = await httpManager.get(url: CUSTOMER_ORDERS_IN_HOLDER, params: params);
    return ResultApiModel.fromJson(result);
  }
  static Future<dynamic> customerOrdersInWork(params) async {
    final result = await httpManager.get(url: CUSTOMER_ORDERS_IN_WORK, params: params);
    return ResultApiModel.fromJson(result);
  }

  static Future<dynamic> executorOrdersInWork(params) async {
    final result = await httpManager.get(url: EXECUTOR_ORDERS_IN_WORK, params: params);
    return ResultApiModel.fromJson(result);
  }

  ///Get Wish List
  static Future<dynamic> getWishList(params) async {
    final result = await httpManager.get(url: GET_WISHLIST, params: params);
    return ResultApiModel.fromJson(result);
  }

  ///Save Wish List
  static Future<dynamic> addWishList(params) async {
    final result = await httpManager.get(url: SAVE_WISHLIST, params: params);
    return ResultApiModel.fromJson(result);
  }

  ///Remove Wish List
  static Future<dynamic> removeWishList(params) async {
    final result = await httpManager.get(url: DELETE_WISHLIST, params: params);
    return ResultApiModel.fromJson(result);
  }


  static Future<dynamic> getAuctionList() async{
    final result = await httpManager.get(
      url: GET_AUCTION_LIST,
    );
    print(result);
    return ResultApiModel.fromJson(result);
  }

  static Future<dynamic> getStageList(params) async{
    final result = await httpManager.get(
      url: GET_ALL_STORAGE_LIST,
      params: params,
    );
    print(result);
    return ResultApiModel.fromJson(result);
  }

  static Future<dynamic> addNewStorage(params) async{
    final result = await httpManager.get(
      url: ADD_NEW_STORAGE,
      params: params,
    );
    print(result);
    return ResultApiModel.fromJson(result);
  }

  static Future<dynamic> getCompanyType() async{
    final result = await httpManager.get(
      url: GET_COMPANY_TYPE,
    );
    return result;
  }

  static Future<dynamic> getAllEquipment() async{
    final result = await httpManager.get(
      url: GET_ALL_EQUIPMENT,
    );
    return ResultApiModel.fromJson(result) ;
  }
  static Future<dynamic> getEquipmentCategory() async{
    final result = await httpManager.get(
      url: GET_EQUIPMENT_CATEGORY,
    );
    return result;
  }

  static Future<dynamic> addNewEquipment(params) async{
    final result = await httpManager.post(
      url: ADD_NEW_EQUIPMENT,
      data: params,
    );
    return ResultApiModel.fromJson(result) ;
  }

  static Future<dynamic> getEquipmentType() async{
    final result = await httpManager.get(
      url: GET_EQUIPMENT_TYPE,
    );
    return result;
  }

  static Future<dynamic> getEquipmentRentType() async{
    final result = await httpManager.get(
      url: GET_EQUIPMENT_RENT_TYPE,
    );
    return result;
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
    return ResultApiModel.fromJson(result);
  }

  static Future<dynamic> acceptPost(params) async{
    final result = await httpManager.get(
      url: ACCEPT_POST,
      params: params,
    );
    return ResultApiModel.fromJson(result);
  }

  static Future<dynamic> giveOrderForDriver(params) async{
    final result = await httpManager.get(
      url: GIVE_ORDER_FOR_DRIVER,
      params: params,
    );
    return ResultApiModel.fromJson(result);
  }

  static Future<dynamic> cancelOrder(params) async{
    final result = await httpManager.get(
      url: CANCEL_ORDER,
      params: params,
    );
    return ResultApiModel.fromJson(result);
  }
  static Future<dynamic> selectDriver(params) async{
    final result = await httpManager.get(
      url: SELECT_DRIVER,
      params: params,
    );
    return ResultApiModel.fromJson(result);
  }

  static Future<dynamic> getInfoById(params) async{
    final result = await httpManager.get(
      url: GET_INFO_BY_ID+params,
    );
    return ResultApiModel.fromJson(result);
  }

  static Future<dynamic> sendRequestToTakeCargo(params) async{
    final result = await httpManager.post(
      url: SEND_REQUEST_TO_TAKE_CARGO,
      data: params,
    );
    return ResultApiModel.fromJson(result);
  }

  static Future<dynamic> getPostLoadingType() async{
    final result = await httpManager.get(
      url: GET_TYPE_OF_POST_LOADING,
    );
    return ResultApiModel.fromJson(result);
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


import 'package:bliz/logic_block/models/city_model.dart';
import 'package:bliz/logic_block/models/country_model.dart';
import 'package:bliz/logic_block/models/more_models.dart';
import 'package:bliz/logic_block/models/result_api_model.dart';
import 'package:bliz/logic_block/repository/resources_repository.dart';
import 'package:flutter/material.dart';

class CargoSpecificationsProvider extends ChangeNotifier {
  List<CityData> _cityData;
  List<CityData> get cityData => _cityData;

  List<Documents> _documentsList;
  List<Documents> get documentsList => _documentsList;

  List<Currency> _currencyTypeList;
  List<Currency> get currencyTypeList => _currencyTypeList;

  List<Payment> _paymentTypeList;
  List<Payment> get paymentTypeList => _paymentTypeList;

  List<CountryModel> _countryList;
  List<CountryModel> get countryList => _countryList;

  List<PostLoading> _postLoadingList;
  List<PostLoading> get postLoadingList => _postLoadingList;

  final ResourcesRepository resourcesRepository = ResourcesRepository();

/*  CityListProvider() {
    getData();
  }*/

  Future<bool> getData() async {
    try{
      await getAllCityById();
      await getCurrencyType();
      await getPaymentType();
      await getAllDocumentsFromDB();
      await getCountryList();
      await getPostLoadingType();
      return true;
    }catch(e){
      print("CATCH MESSAGE:   ERROR ON CityListProvider");
      print(e);
      return false;
    }

  }


  Future<List<PostLoading>> getPostLoadingType() async {

    ResultApiModel result = await resourcesRepository.getPostLoadingType();
    if(result.data.isNotEmpty || result != null){
      final Iterable refactorCategory = result.data ?? [];
      _postLoadingList = refactorCategory.map((item) {
        return PostLoading.fromJson(item);
      }).toList();
      return _postLoadingList;
    }
    else{
      return [];
    }
  }

  Future<List<CityData>> getAllCityById({int countryId}) async {

    Map<String, dynamic> countryParam= {
      "countryID": countryId == null ? 1 : countryId,
    };
    List result = await resourcesRepository.getCity(countryParam);

    if(result.isNotEmpty || result != null){
      final Iterable refactorCategory = result ?? [];
      _cityData = refactorCategory.map((item) {
        return CityData.fromJson(item);
      }).toList();
      return _cityData;
    }
    else{
      return [];
    }
  }

  Future<List<Documents>> getAllDocumentsFromDB() async {

    ResultApiModel result = await resourcesRepository.getDocumentsList();

    if(result.data.isNotEmpty || result.data != null){
      final Iterable refactorCategory = result.data ?? [];
      _documentsList = refactorCategory.map((item) {
        return Documents.fromJson(item);
      }).toList();
      return _documentsList;
    }
    else{
      return [];
    }
  }

  Future<List<Payment>> getPaymentType() async {

    List result = await resourcesRepository.getPaymentType();

    if(result.isNotEmpty || result != null){
      final Iterable refactorCategory = result ?? [];
      _paymentTypeList = refactorCategory.map((item) {
        return Payment.fromJson(item);
      }).toList();
      return _paymentTypeList;
    }
    else{
      return [];
    }
  }

  Future<List<Currency>> getCurrencyType() async {

    List result = await resourcesRepository.getCurrencyType();

    if(result.isNotEmpty || result != null){
      final Iterable refactorCategory = result ?? [];
      _currencyTypeList = refactorCategory.map((item) {
        return Currency.fromJson(item);
      }).toList();
      return _currencyTypeList;
    }
    else{
      return [];
    }
  }

  Future<List<CountryModel>> getCountryList() async {

    List result = await resourcesRepository.getCountry();

    if(result.isNotEmpty || result != null){
      final Iterable refactorCategory = result ?? [];
      _countryList = refactorCategory.map((item) {
        return CountryModel.fromJson(item);
      }).toList();
      return _countryList;
    }
    else{
      return [];
    }
  }

}
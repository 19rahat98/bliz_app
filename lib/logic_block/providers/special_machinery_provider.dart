import 'package:bliz/logic_block/models/city_model.dart';
import 'package:bliz/logic_block/models/country_model.dart';
import 'package:bliz/logic_block/models/more_models.dart';
import 'package:bliz/logic_block/models/result_api_model.dart';
import 'package:bliz/logic_block/repository/resources_repository.dart';
import 'package:flutter/material.dart';

class SpecialMachineryProvider extends ChangeNotifier {

  List<UniversalModel> _equipmentCategoryList;
  List<UniversalModel> get equipmentCategoryList => _equipmentCategoryList;

  List<UniversalModel> _equipmentType;
  List<UniversalModel> get equipmentType => _equipmentType;

  List<UniversalModel> _equipmentRentType;
  List<UniversalModel> get equipmentRentType => _equipmentRentType;

  List<Currency> _currencyTypeList;
  List<Currency> get currencyTypeList => _currencyTypeList;

  List<CityData> _cityData;
  List<CityData> get cityData => _cityData;

  final ResourcesRepository resourcesRepository = ResourcesRepository();

/*  CityListProvider() {
    getData();
  }*/

  Future<bool> getData() async {
    try{
      await getEquipmentType();
      await getEquipmentCategoryList();
      await getEquipmentRentType();
      await getCurrencyType();
      await getAllCityById();
      return true;
    }catch(e){
      print("CATCH MESSAGE:   ERROR ON Special MachineryProvider");
      print(e);
      return false;
    }

  }

  Future getCurrencyType() async {

    List result = await resourcesRepository.getCurrencyType();

    if(result != null){
      final Iterable refactorCategory = result ?? [];
      _currencyTypeList = refactorCategory.map((item) {
        return Currency.fromJson(item);
      }).toList();
      notifyListeners();
    }
    else{
      _currencyTypeList = [];
      notifyListeners();
    }
  }


  Future getAllCityById({int countryId}) async {

    Map<String, dynamic> countryParam= {
      "countryID": countryId == null ? 1 : countryId,
    };
    List result = await resourcesRepository.getCity(countryParam);

    if(result != null    ){
      final Iterable refactorCategory = result ?? [];
      _cityData = refactorCategory.map((item) {
        return CityData.fromJson(item);
      }).toList();
      notifyListeners();
    }
    else{
      _cityData = [];
      notifyListeners();
    }
  }


  Future getEquipmentType() async {
    List result = await resourcesRepository.getEquipmentType();
    if(result != null    ){
      final Iterable refactorCategory = result ?? [];
      _equipmentType = refactorCategory.map((item) {
        return UniversalModel.fromJson(item);
      }).toList();
      notifyListeners();
    }
    else{
      _equipmentType = [];
    }
  }


  Future getEquipmentCategoryList() async {

    List result =await resourcesRepository.getEquipmentCategory();
    if(result != null    ){
      final Iterable refactorCategory = result ?? [];
      _equipmentCategoryList = refactorCategory.map((item) {
        return UniversalModel.fromJson(item);
      }).toList();
      notifyListeners();
    }
    else{
      _equipmentCategoryList = [];
      notifyListeners();
    }
  }

  Future getEquipmentRentType() async {

    List result = await resourcesRepository.getEquipmentRent();
    if(result != null    ){
      final Iterable refactorCategory = result ?? [];
      _equipmentRentType = refactorCategory.map((item) {
        return UniversalModel.fromJson(item);
      }).toList();
      notifyListeners();
    }
    else{
      _equipmentRentType = [];
      notifyListeners();
    }
  }



}
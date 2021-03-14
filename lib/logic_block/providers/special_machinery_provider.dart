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


  final ResourcesRepository resourcesRepository = ResourcesRepository();

/*  CityListProvider() {
    getData();
  }*/

  Future<bool> getData() async {
    try{
      await getEquipmentType();
      await getEquipmentCategoryList();
      await getEquipmentRentType();
      return true;
    }catch(e){
      print("CATCH MESSAGE:   ERROR ON Special MachineryProvider");
      print(e);
      return false;
    }

  }


  Future<List<UniversalModel>> getEquipmentType() async {

    ResultApiModel result = await resourcesRepository.getEquipmentType();
    if(result.data.isNotEmpty || result != null){
      final Iterable refactorCategory = result.data ?? [];
      _equipmentType = refactorCategory.map((item) {
        return UniversalModel.fromJson(item);
      }).toList();
      return _equipmentType;
    }
    else{
      return [];
    }
  }

  Future<List<UniversalModel>> getEquipmentCategoryList() async {

    ResultApiModel result = await resourcesRepository.getEquipmentCategory();
    if(result.data.isNotEmpty || result != null){
      final Iterable refactorCategory = result.data ?? [];
      _equipmentCategoryList = refactorCategory.map((item) {
        return UniversalModel.fromJson(item);
      }).toList();
      return _equipmentCategoryList;
    }
    else{
      return [];
    }
  }

  Future<List<UniversalModel>> getEquipmentRentType() async {

    ResultApiModel result = await resourcesRepository.getEquipmentRent();
    if(result.data.isNotEmpty || result != null){
      final Iterable refactorCategory = result.data ?? [];
      _equipmentRentType = refactorCategory.map((item) {
        return UniversalModel.fromJson(item);
      }).toList();
      return _equipmentRentType;
    }
    else{
      return [];
    }
  }



}
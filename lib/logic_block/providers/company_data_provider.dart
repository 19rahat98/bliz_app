import 'package:bliz/logic_block/models/city_model.dart';
import 'package:bliz/logic_block/models/country_model.dart';
import 'package:bliz/logic_block/models/more_models.dart';
import 'package:bliz/logic_block/models/result_api_model.dart';
import 'package:bliz/logic_block/repository/resources_repository.dart';
import 'package:flutter/material.dart';

class CompanyDataProvider extends ChangeNotifier {
  List<UniversalModel> _companyType;
  List<UniversalModel> get companyType => _companyType;

  final ResourcesRepository resourcesRepository = ResourcesRepository();


  Future<bool> getData() async {
    try{
      await getAllCompanyType();
      return true;
    }catch(e){
      print("CATCH MESSAGE:   ERROR ON CityListProvider");
      print(e);
      return false;
    }

  }

  Future<List<UniversalModel>> getAllCompanyType() async {

    List result = await resourcesRepository.getCompanyType();

    if(result.isNotEmpty || result != null){
      final Iterable refactorCategory = result ?? [];
      _companyType = refactorCategory.map((item) {
        return UniversalModel.fromJson(item);
      }).toList();
      return _companyType;
    }
    else{
      return [];
    }
  }


}
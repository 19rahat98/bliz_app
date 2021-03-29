import 'package:bliz/logic_block/api/api.dart';

class ResourcesRepository{
  Future<dynamic> getCity(params) async {
    return await Api.getCityList(params);
  }
  Future<dynamic> getCountry() async {
    return await Api.getCountryList();
  }
  Future<dynamic> getCurrencyType() async {
    return await Api.getCurrencyType();
  }
  Future<dynamic> getDocumentsList() async {
    return await Api.getDocumentsList();
  }
  Future<dynamic> getPaymentType() async {
    return await Api.getPaymentType();
  }
  Future<dynamic> getPostLoadingType() async {
    return await Api.getPostLoadingType();
  }

  ///Equipment Repository
  Future<dynamic> getEquipmentCategory() async {
    return await Api.getEquipmentCategory();
  }
  Future<dynamic> getEquipmentType() async {
    return await Api.getEquipmentType();
  }
  Future<dynamic> getEquipmentRent() async {
    return await Api.getEquipmentRentType();
  }

  ///CompanyData Repository
  Future<dynamic> getCompanyType() async {
    return await Api.getCompanyType();
  }
}
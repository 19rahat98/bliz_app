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
}
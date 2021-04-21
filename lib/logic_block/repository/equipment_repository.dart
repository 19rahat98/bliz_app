import 'package:bliz/logic_block/api/api.dart';

class EquipmentRepository {
  Future<dynamic> addNewEquipment(params) async {
    return await Api.addNewEquipment(params);
  }
  Future<dynamic> getAllEquipment() async {
    return await Api.getAllEquipment();
  }
}
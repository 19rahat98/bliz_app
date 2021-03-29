import 'package:bliz/logic_block/api/api.dart';

class StorageRepository {
  Future<dynamic> addNewStorage(params) async {
    return await Api.addNewStorage(params);
  }
  Future<dynamic> getStorageList(params) async {
    return await Api.getCargoList(params);
  }
}
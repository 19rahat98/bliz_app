import 'package:bliz/logic_block/api/api.dart';

class CargoRepository {
  Future<dynamic> addNewCargo(params) async {
    return await Api.addNewCargo(params);
  }
  Future<dynamic> getCargoList(params) async {
    return await Api.getCargoList(params);
  }
}
import 'package:bliz/logic_block/api/api.dart';

class CargoRepository {
  Future<dynamic> addNewCargo(params) async {
    return await Api.addNewCargo(params);
  }
}
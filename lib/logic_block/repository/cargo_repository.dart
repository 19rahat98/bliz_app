import 'package:bliz/logic_block/api/api.dart';

class CargoRepository {
  Future<dynamic> addNewCargo(params) async {
    return await Api.addNewCargo(params);
  }
  Future<dynamic> getCargoList(params) async {
    return await Api.getCargoList(params);
  }
  Future<dynamic> getInfoById(params) async {
    return await Api.getInfoById(params);
  }

  Future<dynamic> sendRequestToTakeCargo(params) async {
    return await Api.sendRequestToTakeCargo(params);
  }

  Future<dynamic> acceptPost(params) async {
    return await Api.acceptPost(params);
  }

  Future<dynamic> selectDriver(params) async {
    return await Api.selectDriver(params);
  }

  Future<dynamic> giveOrderForDriver(params) async {
    return await Api.giveOrderForDriver(params);
  }

  Future<dynamic> cancelOrder(params) async {
    return await Api.cancelOrder(params);
  }
}
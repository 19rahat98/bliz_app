import 'package:bliz/logic_block/api/api.dart';

class ApplicationRepository {
  Future<dynamic> executorOrdersInHold(params) async {
    return await Api.executorOrdersInHold(params);
  }
  Future<dynamic> executorOrdersInWork(params) async {
    return await Api.executorOrdersInWork(params);
  }
  Future<dynamic> customerOrdersInHold(params) async {
    return await Api.customerOrdersInHold(params);
  }
  Future<dynamic> customerOrdersInWork(params) async {
    return await Api.customerOrdersInWork(params);
  }
}
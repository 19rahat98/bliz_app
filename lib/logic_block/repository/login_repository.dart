import 'package:bliz/logic_block/api/api.dart';

class UserRepository {
  Future<dynamic> regUser(params) async {
    return await Api.userRegistration(params);
  }

  Future<dynamic> loginUser(params) async {
    print(params.runtimeType);
    return await Api.userLogin(params);
  }

  Future<dynamic> getUser(params) async {
    return await Api.getUser(params);
  }
}
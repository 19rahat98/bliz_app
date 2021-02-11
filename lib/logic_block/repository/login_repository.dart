import 'package:bliz/logic_block/api/api.dart';

class RegistrationRepository {
  Future<dynamic> regUser(params) async {
    print(params.runtimeType);
    return await Api.userRegistration(params);
  }

  Future<dynamic> loginUser(params) async {
    print(params.runtimeType);
    return await Api.userLogin(params);
  }
}
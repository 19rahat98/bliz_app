
import 'package:bliz/logic_block/api/api.dart';

class UserDataRepository{
  Future<dynamic> fetchData(params) async{
    return await Api.getUser(params);
  }
}
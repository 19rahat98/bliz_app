import 'package:bliz/logic_block/api/api.dart';

class AuctionRepository {
  Future<dynamic> addNewAuction(params) async {
    return await Api.addNewCargo(params);
  }
  Future<dynamic> getAuctionList() async {
    return await Api.getAuctionList();
  }
  Future<dynamic> getInfoAboutActionById(params) async {
    return await Api.getInfoById(params);
  }
}
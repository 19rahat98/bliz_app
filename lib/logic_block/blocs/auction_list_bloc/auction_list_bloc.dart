
import 'bloc.dart';
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bliz/logic_block/models/cargo_model.dart';
import 'package:bliz/logic_block/models/result_api_model.dart';
import 'package:bliz/logic_block/repository/auction_repository.dart';


class AuctionListBloc extends Bloc<AuctionListEvent, AuctionListState> {
  AuctionListBloc() : super(InitialAuctionListState());
  final AuctionRepository auctionRepository = AuctionRepository();

  @override
  Stream<AuctionListState> mapEventToState(event) async* {
    if (event is GetAuctionList) {
      yield AuctionListLoading();

      ///Fetch register
      final ResultApiModel result = await auctionRepository.getAuctionList();
      ///Case success
      if (result.success && result.data != []) {
        print('hg');
        final Iterable iterableList = result?.data ?? [];
        final auctionList = iterableList.map((item){
          return Data.fromJson(item);
        }).toList();
        //final Data cargoData = Data.fromJson(result.data.first);
        //print(cargoData.user.first.fullName);
        ///Notify loading to UI
        yield AuctionListSuccess(auctionList: auctionList);
      } else {
        ///Notify loading to UI
        yield AuctionListFail(code: result.message);
      }
    }
  }
}

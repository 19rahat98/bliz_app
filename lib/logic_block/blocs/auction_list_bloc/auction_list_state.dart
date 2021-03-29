import 'package:bliz/logic_block/models/cargoData.dart';
import 'package:bliz/logic_block/models/cargo_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class AuctionListState {}

class AuctionListSuccess extends AuctionListState {
  final List<Data> auctionList;

  AuctionListSuccess({this.auctionList});
}


class InitialAuctionListState extends AuctionListState {}

class AuctionListFail extends AuctionListState {
  final String code;

  AuctionListFail({this.code});
}

class AuctionListLoading extends AuctionListState {}
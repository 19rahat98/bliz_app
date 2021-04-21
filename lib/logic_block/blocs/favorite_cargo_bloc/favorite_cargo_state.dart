import 'package:bliz/logic_block/models/cargo_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class WishListState {}

class InitialWishListState extends WishListState {}

class WishListLoading extends WishListState {}

class WishListSuccess extends WishListState {
  final List<Data> wishList;
  WishListSuccess({this.wishList});
}

class WishListLoadFail extends WishListState {
  final String code;
  WishListLoadFail({this.code});
}

class WishListSaveSuccess extends WishListState {
  final int id;
  WishListSaveSuccess({this.id});
}

class WishListSaveFail extends WishListState {
  final String code;
  WishListSaveFail({this.code});
}

class WishListRemoveSuccess extends WishListState {
  final int id;
  WishListRemoveSuccess({this.id});
}

class WishListRemoveFail extends WishListState {
  final String code;
  WishListRemoveFail({this.code});
}

import 'package:meta/meta.dart';

import 'package:bliz/logic_block/models/cargo_model.dart';

@immutable
abstract class WishListEvent {}

class OnLoadWishList extends WishListEvent {
  OnLoadWishList();
}

class OnLoadMoreWishList extends WishListEvent {
  final int page;
  final List<Data> wishList;
  OnLoadMoreWishList({this.page, this.wishList});
}

class OnAddWishList extends WishListEvent {
  final int id;
  OnAddWishList({this.id});
}

class OnRemoveWishList extends WishListEvent {
  final int id;
  final int index;
  final List<Data> wishList;
  OnRemoveWishList({this.id, this.index, this.wishList});
}

class OnClearWishList extends WishListEvent {
  final List<Data> wishList;
  OnClearWishList({this.wishList});
}

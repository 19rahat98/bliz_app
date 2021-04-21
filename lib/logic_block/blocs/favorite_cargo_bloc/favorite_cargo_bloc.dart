import 'package:bliz/logic_block/repository/favorite_list_repository.dart';

import 'bloc.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:bloc/bloc.dart';
import 'package:bliz/logic_block/models/cargo_model.dart';
import 'package:bliz/logic_block/models/result_api_model.dart';


class WishListBloc extends Bloc<WishListEvent, WishListState> {
  WishListBloc() : super(InitialWishListState());
  final WishListRepository wishListRepository = WishListRepository();
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Stream<WishListState> mapEventToState(WishListEvent event) async* {
    if (event is OnLoadWishList) {
      yield WishListLoading();
      final SharedPreferences cp = await _prefs;

      ///Fetch API
      final ResultApiModel response = await wishListRepository.loadWishList(
        {"token": cp.getString("token")},
      );
      if (response.success) {
        final Iterable refactorWishList = response?.data ?? [];
        final listWishList = refactorWishList.map((item) {
          return Data.fromJson(item);
        }).toList();

        ///Sync UI
        yield WishListSuccess(
          wishList: listWishList,
        );
      } else {
        yield WishListLoadFail(code: response.code);
      }
    }

/*    if (event is OnLoadMoreWishList) {
      ///Fetch API
      final ResultApiModel response = await wishListRepository.loadWishList({
        "page": event.page,
        "per_page": ListSetting.perPage,
      });
      final Iterable refactorWishList = response?.data ?? [];
      final listWishList = refactorWishList.map((item) {
        return ProductModel.fromJson(item);
      }).toList();

      event.wishList.addAll(listWishList);

      ///Sync UI
      yield WishListSuccess(
        wishList: event.wishList,
      );
    }*/

    if (event is OnAddWishList) {
      final SharedPreferences cp = await _prefs;
      ///Fetch API
      Map<String, dynamic> params = {"post_id": event.id, "category_id": 1, "token": cp.getString("token")};
      final ResultApiModel response = await wishListRepository.addWishList(params);
      print(response.success);
      print('asdasdasd');
      if (response.success) {
        ///Sync UI
        yield WishListSaveSuccess();
      } else {
        yield WishListSaveFail(code: response.code);
      }
    }

    if (event is OnRemoveWishList) {
      final SharedPreferences cp = await _prefs;

      ///Fetch API
      Map<String, dynamic> params = {"post_id": event.id, "token": cp.getString("token")};

      final ResultApiModel response = await wishListRepository.removeWishList(params);
      if (response.success) {
        ///Sync UI
        yield WishListRemoveSuccess(id: event.id);
      } else {
        yield WishListRemoveFail(code: response.code);
      }
    }

/*    if (event is OnClearWishList) {
      yield WishListLoading();
      final ResultApiModel response = await wishListRepository.clearWishList();
      if (response.success) {
        ///Sync UI
        yield WishListRemoveSuccess();
      } else {
        yield WishListRemoveFail(code: response.code);
      }
    }*/
  }
}

import 'bloc.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:bloc/bloc.dart';
import 'package:bliz/logic_block/models/cargoData.dart';
import 'package:bliz/logic_block/models/cargo_model.dart';
import 'package:bliz/logic_block/models/result_api_model.dart';
import 'package:bliz/logic_block/repository/cargo_repository.dart';
import 'package:bliz/logic_block/repository/favorite_list_repository.dart';


class CargoInfoBloc extends Bloc<CargoInfoEvent, CargoInfoState> {
  CargoInfoBloc() : super(InitialCargoInfoState());
  final CargoRepository cargoRepository = CargoRepository();
  final WishListRepository wishListRepository = WishListRepository();
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Stream<CargoInfoState> mapEventToState(event) async* {
    if (event is GetCargoById) {
      yield CargoInfoLoading();
      final SharedPreferences cp = await _prefs;
      final ResultApiModel result = await cargoRepository.getInfoById(event.cargoId.toString());
      final ResultApiModel favoriteListResponse = await wishListRepository.loadWishList(
        {"token": cp.getString('token')},
      );
      if (result.success && result.data != null) {
        final cargoInfoById = CargoData.fromJson(result.data[0]);
        if(favoriteListResponse.success && favoriteListResponse.data != null){
          final Iterable refactorWishList = favoriteListResponse?.data ?? [];
          final listWishList = refactorWishList.map((item) {
            return Data.fromJson(item);
          }).toList();
          listWishList.forEach((element) {
            if(element.id == cargoInfoById.id) {
              cargoInfoById.isFavorite = true;
            }
          });
        }
        //final Data cargoData = Data.fromJson(result.data.first);
        //print(cargoData.user.first.fullName);
        ///Notify loading to UI
        yield CargoInfo(cargoInfo: cargoInfoById);
      } else {
        ///Notify loading to UI
        yield CargoInfoFail(code: result.message);
      }
    }
  }
}

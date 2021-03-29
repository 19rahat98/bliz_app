import 'package:bliz/logic_block/models/city_model.dart';
import 'package:bliz/logic_block/models/more_models.dart';
import 'package:bliz/logic_block/repository/resources_repository.dart';

import 'bloc.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:bloc/bloc.dart';
import 'package:bliz/logic_block/models/cargoData.dart';
import 'package:bliz/logic_block/models/cargo_model.dart';
import 'package:bliz/logic_block/models/result_api_model.dart';


class CargoAdditionalInfoBloc extends Bloc<CargoAdditionalInfoEvent, CargoAdditionalInfoState> {
  CargoAdditionalInfoBloc() : super(InitialCargoAdditionalInfoState());
  final ResourcesRepository resourcesRepository = ResourcesRepository();
  //Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Stream<CargoAdditionalInfoState> mapEventToState(event) async* {
    if (event is GetCargoInfo) {
      List<UniversalModel> currencyTypeList;
      List<UniversalModel> paymentTypeList;
      List<UniversalModel> postLoadingList;
      List<UniversalModel> documentsList;
      List<CityData> cityData;

      yield CargoAdditionalInfoLoading();

      final ResultApiModel postLoadingListResult = await resourcesRepository.getPostLoadingType();
      List cityDataResult = await resourcesRepository.getCity({"countryID": 1});
      print(cityDataResult);
      ResultApiModel documentsListResult = await resourcesRepository.getDocumentsList();
      List paymentTypeListResult = await resourcesRepository.getPaymentType();
      List currencyTypeListResult = await resourcesRepository.getCurrencyType();

/*      if(currencyTypeListResult != null){
        final Iterable refactorCategory = currencyTypeListResult ?? [];
        currencyTypeList = refactorCategory.map((item) {
          return UniversalModel.fromJson(item);
        }).toList();
      }

      if(paymentTypeListResult != null){
        final Iterable refactorCategory = paymentTypeListResult ?? [];
        paymentTypeList = refactorCategory.map((item) {
          return UniversalModel.fromJson(item);
        }).toList();
      }

      if( postLoadingListResult != null && postLoadingListResult.data.isNotEmpty ){
        final Iterable refactorCategory = postLoadingListResult.data ?? [];
        postLoadingList = refactorCategory.map((item) {
          return UniversalModel.fromJson(item);
        }).toList();
      }

      if(documentsListResult.data != null){
        final Iterable refactorCategory = documentsListResult.data ?? [];
        documentsList = refactorCategory.map((item) {
          return UniversalModel.fromJson(item);
        }).toList();
      }

      if(cityDataResult != null){
        final Iterable refactorCategory = cityDataResult ?? [];
        cityData = refactorCategory.map((item) {
          return CityData.fromJson(item);
        }).toList();
      }*/


      try{

        final Iterable refactorCurrencyTypeList = currencyTypeListResult ?? [];
        currencyTypeList = refactorCurrencyTypeList.map((item) {
          return UniversalModel.fromJson(item);
        }).toList();

        final Iterable refactorPaymentTypeList = paymentTypeListResult ?? [];
        paymentTypeList = refactorPaymentTypeList.map((item) {
          return UniversalModel.fromJson(item);
        }).toList();

        final Iterable refactorPostLoadingList = postLoadingListResult.data ?? [];
        postLoadingList = refactorPostLoadingList.map((item) {
          return UniversalModel.fromJson(item);
        }).toList();

        final Iterable refactorDocumentsList = documentsListResult.data ?? [];
        documentsList = refactorDocumentsList.map((item) {
          return UniversalModel.fromJson(item);
        }).toList();

        final Iterable refactorCityData = cityDataResult ?? [];
        cityData = refactorCityData.map((item) {
          return CityData.fromJson(item);
        }).toList();

        yield CargoAdditionalInfoSuccess(documentsList: documentsList, cityData: cityData, paymentTypeList: paymentTypeList, postLoadingList: postLoadingList,currencyTypeList: currencyTypeList );
      } catch(error){
        print(error);
        print('error');
        yield CargoAdditionalInfoFail(code: error.message);
      }


       if(currencyTypeListResult.isEmpty && postLoadingListResult.data == null && cityDataResult.isEmpty && documentsListResult.data == null && paymentTypeListResult.isEmpty){
         yield CargoAdditionalInfoFail(code: 'null');
       }
    }
  }
}

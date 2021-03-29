import 'package:bliz/logic_block/models/cargoData.dart';
import 'package:bliz/logic_block/models/cargo_model.dart';
import 'package:bliz/logic_block/models/city_model.dart';
import 'package:bliz/logic_block/models/country_model.dart';
import 'package:bliz/logic_block/models/more_models.dart';
import 'package:meta/meta.dart';

@immutable
abstract class CargoAdditionalInfoState {}

class InitialCargoAdditionalInfoState extends CargoAdditionalInfoState {}

class CargoAdditionalInfoSuccess extends CargoAdditionalInfoState {
  final List<UniversalModel> documentsList;
  final List<CityData> cityData;
  final List<UniversalModel> currencyTypeList;
  final List<UniversalModel> paymentTypeList;
  final List<CountryModel> countryList;
  final List<UniversalModel> postLoadingList;

  CargoAdditionalInfoSuccess({this.documentsList, this.cityData, this.currencyTypeList, this.paymentTypeList, this.countryList, this.postLoadingList});
}


class CargoAdditionalInfoFail extends CargoAdditionalInfoState {
  final String code;

  CargoAdditionalInfoFail({this.code});
}

class CargoAdditionalInfoLoading extends CargoAdditionalInfoState {}
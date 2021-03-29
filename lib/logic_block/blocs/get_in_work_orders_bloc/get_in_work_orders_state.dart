import 'package:bliz/logic_block/models/application_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class InWorkOrdersState {}

class InWorkOrdersListSuccess extends InWorkOrdersState {
  final List<Application> applicationInWorkList;
  final List<Application> customerOrdersInWorkList;

  InWorkOrdersListSuccess({this.applicationInWorkList, this.customerOrdersInWorkList});
}


class InitialInWorkOrdersListState extends InWorkOrdersState {}

class InWorkOrdersListFail extends InWorkOrdersState {
  final String code;

  InWorkOrdersListFail({this.code});
}

class InWorkOrdersListLoading extends InWorkOrdersState {}
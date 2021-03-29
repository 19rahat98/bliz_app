import 'package:bliz/logic_block/models/application_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class InProgressApplicationState {}

class InProgressApplicationListSuccess extends InProgressApplicationState {
  final List<Application> applicationInHoldList;
  final List<Application> customerOrdersInHoldList;

  InProgressApplicationListSuccess({this.applicationInHoldList, this.customerOrdersInHoldList});
}


class InitialInProgressApplicationListState extends InProgressApplicationState {}

class InProgressApplicationListFail extends InProgressApplicationState {
  final String code;

  InProgressApplicationListFail({this.code});
}

class InProgressApplicationListLoading extends InProgressApplicationState {}
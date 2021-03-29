import 'package:meta/meta.dart';

import 'package:bliz/logic_block/models/cargo_model.dart';

@immutable
abstract class RequestCargoEvent {}

class SendRequest extends RequestCargoEvent {
  final int postId;
  final String price;
  final int currency;
  SendRequest({this.postId, this.price, this.currency});
}

class AcceptPost extends RequestCargoEvent {
  final int orderId;
  AcceptPost({this.orderId});
}

class ChoseDriver extends RequestCargoEvent {
  final int orderId;
  ChoseDriver({this.orderId});
}

class AssignDriver extends RequestCargoEvent {
  final int orderId;
  final int driverId;

  AssignDriver({this.orderId, this.driverId});
}

class CancelOrder extends RequestCargoEvent {
  final int orderId;

  CancelOrder({this.orderId});
}

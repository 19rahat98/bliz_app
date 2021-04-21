abstract class AddingCargoEvent {}

class AddCargo extends AddingCargoEvent {
  final int categoryId;
  final int subCategoryId;
  final String title;
  final String from;
  final String toOrder;
  final String volume;
  final String net;
  final String startDate;
  final String endDate;
  final String documents;
  final String fromString;
  final String toCityString;
  final int price;
  final String priceType;
  final int paymentType;

  AddCargo({
    this.categoryId,
    this.subCategoryId,
    this.title,
    this.from,
    this.toOrder,
    this.volume,
    this.net,
    this.startDate,
    this.endDate,
    this.documents,
    this.price,
    this.priceType,
    this.paymentType,
    this.fromString,
    this.toCityString,
  });
}

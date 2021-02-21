abstract class AddingCargoEvent {}

class AddCargo extends AddingCargoEvent {
  final int categoryId;
  final int subCategoryId;
  final String title;
  final int from;
  final int toOrder;
  final double volume;
  final int net;
  final String startDate;
  final String endDate;
  final String documents;
  final int price;
  final int priceType;
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
  });
}

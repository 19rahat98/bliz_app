import 'dart:io';

abstract class AddingSpecialMachineryEvent {}

class AddSpecialMachinery extends AddingSpecialMachineryEvent {
  final int typeEquipment;
  final int categoryId;
  final String name;
  final String cityId;
  final String address;
  final String net;
  final String year;
  final int typeBlade;
  final String power;
  final int height;
  final String width;
  final int rise;
  final int deep;
  final String price;
  final int currency;
  final int equipmentRent;
  final String description;
  final File images;

  AddSpecialMachinery({
    this.typeEquipment,
    this.categoryId,
    this.name,
    this.cityId,
    this.address,
    this.net,
    this.year,
    this.typeBlade,
    this.power,
    this.height,
    this.width,
    this.rise,
    this.deep,
    this.price,
    this.currency,
    this.equipmentRent,
    this.description,
    this.images,
  });
}

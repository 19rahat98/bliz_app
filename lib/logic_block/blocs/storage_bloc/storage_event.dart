import 'dart:io';

abstract class AddingStorageEvent {}

class AddNewStorage extends AddingStorageEvent {
  final int typeEquipment;
  final String area;
  final String totalArea;
  final File images;

  final String address;
  final String className;
  final String type;
  final String year;
  final int cityId;
  final String floor;
  final String parkingCar;
  final String parkingCargo;
  final String floorType;
  final String floorLoad;
  final String fireSystem;
  final String ventilation;
  final String fireAlarm;
  final String securityAlarm;
  final String storageTransportArea;
  final String inlineBlock;
  final String infrastructure;
  final String price;
  final int priceType;
  final int currency;
  final String rack;
  final String ramp;

  AddNewStorage({
    this.typeEquipment,
    this.area,
    this.totalArea,
    this.images,
    this.className,
    this.type,
    this.year,
    this.cityId,
    this.floor,
    this.parkingCar,
    this.parkingCargo,
    this.floorType,
    this.floorLoad,
    this.fireSystem,
    this.ventilation,
    this.fireAlarm,
    this.securityAlarm,
    this.storageTransportArea,
    this.inlineBlock,
    this.infrastructure,
    this.price,
    this.priceType,
    this.currency,
    this.rack,
    this.ramp,
    this.address,
  });
}

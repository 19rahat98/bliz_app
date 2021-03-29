abstract class CargoInfoEvent {}

class GetCargoById extends CargoInfoEvent {
  final int cargoId;

  GetCargoById({
    this.cargoId,
  });
}

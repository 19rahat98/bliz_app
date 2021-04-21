abstract class CargoEvent {}

class GetCargoFromDb extends CargoEvent {
  final int id;

  GetCargoFromDb({
    this.id,
  });
}


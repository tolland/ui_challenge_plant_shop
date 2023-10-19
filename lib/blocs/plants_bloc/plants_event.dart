part of 'plants_bloc.dart';

abstract class PlantsEvent extends Equatable {
  const PlantsEvent();

  @override
  List<Object> get props => [];
}

class LoadInitialPlants extends PlantsEvent {
  const LoadInitialPlants();

  @override
  List<Object> get props => [];
}

class AddPlant extends PlantsEvent {
  final Plant plant;

  const AddPlant({
    required this.plant,
  });

  @override
  List<Object> get props => [plant];
}

class UpdatePlant extends PlantsEvent {
  final Plant plant;

  const UpdatePlant({
    required this.plant,
  });

  @override
  List<Object> get props => [plant];
}

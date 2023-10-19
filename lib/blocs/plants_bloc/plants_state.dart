part of 'plants_bloc.dart';

enum PlantsStates {
  initial,
  loaded,
  failure,
}

class PlantsState extends Equatable {
  final List<Plant> allPlants;
  final PlantsStates status;

  const PlantsState({
    this.allPlants = const <Plant>[],
    this.status = PlantsStates.initial,
  });

  @override
  List<Object> get props => [
        allPlants,
      ];

  PlantsState copyWith({
    List<Plant>? allPlants,
    PlantsStates? status,
  }) {
    return PlantsState(
      allPlants: allPlants ?? this.allPlants,
      status: status ?? this.status,
    );
  }
}

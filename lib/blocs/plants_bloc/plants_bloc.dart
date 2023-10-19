
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:plants_repository/plants_repository.dart';

part 'plants_event.dart';

part 'plants_state.dart';

class PlantsBloc extends Bloc<PlantsEvent, PlantsState> {
  final PlantRepository plantRepository;

  PlantsBloc({
    required this.plantRepository,
  }) : super(PlantsState()) {
    on<AddPlant>((event, emit) {
      final state = this.state;
      emit(state.copyWith(
        allPlants: List.of(state.allPlants)..add(event.plant),
      ));
    });

    on<LoadInitialPlants>((event, emit) async {
      
      var someplants = await plantRepository.getInitialPlants();
      emit(state.copyWith(
        allPlants: someplants,
      ));
      
      
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:device_preview/device_preview.dart';

import 'package:plants_repository/plants_repository.dart';
import 'package:ui_challenge_plant_shop/services/app_router.dart';
import 'package:ui_challenge_plant_shop/services/app_theme.dart';

import 'blocs/bloc_exports.dart';

class PlantApp extends StatelessWidget {
  const PlantApp({
    Key? key,
    required this.appRouter,
    required this.plantRepository,
  }) : super(key: key);

  final AppRouter appRouter;
  final PlantRepository plantRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: plantRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<PlantsBloc>(
            create: (context) {
              return PlantsBloc(plantRepository: plantRepository)
                ..add(
                  LoadInitialPlants(),
                );
            },
          ),
        ],
        child: MaterialApp(
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          title: 'Flutter Plant Shop App UI Demo',
          theme: AppThemes.light(),
          onGenerateRoute: appRouter.onGenerateRoute,
        ),
      ),
    );
  }
}

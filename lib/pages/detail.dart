import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/plants_bloc/plants_bloc.dart';
import 'package:plants_repository/plants_repository.dart';

import 'detail_landscape.dart';
import 'detail_portrait.dart';

class DetailsPageArguments {
  final int index;

  DetailsPageArguments(this.index);
}

class DetailPage extends StatelessWidget {
  final int index;

  const DetailPage({super.key, required this.index});

  static const String id = 'detail_page';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlantsBloc, PlantsState>(builder: (context, state) {
      List<Plant> plantList = state.allPlants;
      Plant plant = plantList[index];
      return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.keyboard_arrow_left),
          ),
          actions: [
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined),
            )
          ],
        ),
        body: OrientationBuilder(
          builder: (context, orientation) {
            return SafeArea(
              child: orientation == Orientation.portrait ? DetailPagePortrait(plant: plant) : DetailPageLandscape(plant: plant),
            );
          }
        ),
      );
    });
  }
}

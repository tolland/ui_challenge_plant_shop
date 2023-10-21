import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/plants_bloc/plants_bloc.dart';
import 'package:plants_repository/plants_repository.dart';

import '../widgets/detail_infobox.dart';

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
            // IconButton(
            //   onPressed: () {},
            //   icon: Icon(Icons.arrow_left),
            // ),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined),
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Image.asset(plant.imageUrl),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          plant.name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            
                            plant.description,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.fade,
                            softWrap: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: DetailInfoBox(plant: plant,
                  
                  
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ui_challenge_plant_shop/blocs/bloc_exports.dart';

import 'package:plants_repository/plants_repository.dart';
import '../widgets/product_card.dart';
import '../widgets/results_list_header.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({super.key});

  static const String id = 'results_page';

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  final rnd = Random();
  int crossAxisCount = 4;

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlantsBloc, PlantsState>(builder: (context, state) {
      List<Plant> plantList = state.allPlants;
      return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          // title: Text("some title"),
          actions: [
            Text(
              "Search Products",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
            )
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                  child: SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _controller,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Search Products",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        Ink(
                          width: 40,
                          decoration: const ShapeDecoration(
                            color: Colors.white,
                            shape: CircleBorder(
                              side: BorderSide(
                                color: Colors.grey,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                            ),
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.checklist),
                            color: Colors.black,
                            onPressed: () {},
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MasonryGridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    itemCount: plantList.length + 1,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return ResultsListHeader(
                          count: plantList.length,
                        );
                      } else {
                        var plant = plantList[index - 1];
                        return ProductCard(
                          index: index - 1,
                          width: 100,
                          plant: plant,
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
    });
  }
}

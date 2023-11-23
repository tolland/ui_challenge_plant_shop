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
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;

    return BlocBuilder<PlantsBloc, PlantsState>(builder: (context, state) {
      List<Plant> plantList = state.allPlants;
      return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [
              Color(0xffececee),
              Color(0xffd8d8da),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("Search Products"),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.keyboard_arrow_left),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                icon: Image.asset(
                  'assets/images/Profile-Male-PNG.png',
                  fit: BoxFit.contain,
                  height: 32,
                ),
                onPressed: () {},
              ),
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
                                hintText: "Plants",
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Ink(
                            width: 40,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.tune),
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
                      crossAxisCount:
                          orientation == Orientation.portrait ? 2 : 3,
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
        ),
      );
    });
  }
}

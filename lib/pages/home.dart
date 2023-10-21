import 'package:flutter/material.dart';
import 'package:ui_challenge_plant_shop/pages/results.dart';
import 'package:ui_challenge_plant_shop/widgets/home_page_carousel.dart';

import '../widgets/home_page_button.dart';
import '../widgets/home_page_main_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String id = 'home_page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ResultsPage.id);
              },
              child: Text("Skip"),
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              HomePageCarousel(),
              HomePageMainTitle(),
              HomePageButton(),
            ],
          ),
        ),
      ),
    );
  }
}

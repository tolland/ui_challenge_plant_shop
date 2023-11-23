import 'package:flutter/material.dart';
import 'package:ui_challenge_plant_shop/pages/results.dart';
import 'package:ui_challenge_plant_shop/widgets/home_page_carousel.dart';

import '../widgets/home_page_button.dart';
import '../widgets/home_page_main_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String id = 'home_page';

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

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
        appBar: MediaQuery.of(context).orientation == Orientation.landscape
            ? null // show nothing in landscape mode
            : AppBar(
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
            child: orientation == Orientation.portrait
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      HomePageCarousel(),
                      HomePageMainTitle(),
                      HomePageButton(),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisSize: MainAxisSize.min,
                    children: const <Widget>[
                      Expanded(
                        child: HomePageCarousel(),
                      ),
                      Column(
                        children: [
                          HomePageMainTitle(),
                          HomePageButton(),
                        ],
                      ),
                    ],
                  )),
      ),
    );
  }
}

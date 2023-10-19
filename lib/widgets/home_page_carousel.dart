import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class HomePageCarousel extends StatelessWidget {
  const HomePageCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: FlutterCarousel(
          options: CarouselOptions(
            //height: 500.0,
            showIndicator: true,
            autoPlay: false,
            //indicatorMargin: 50,
            enableInfiniteScroll: true,
            slideIndicator: CircularSlideIndicator(
              indicatorBackgroundColor: Colors.grey,
              currentIndicatorColor: Color(0xff76984b),
            ),
            floatingIndicator: true,
          ),
          items: [1, 2, 3, 4].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    //margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      // border: Border.all(
                      //   color: Colors.transparent,
                      //   width: 40,
                      // ),
                      // image: DecorationImage(
                      //   image: AssetImage('assets/images/plant_$i.png'),
                      //   fit: BoxFit.fitHeight,
                      // ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset(
                        'assets/images/plant_$i.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ));
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}

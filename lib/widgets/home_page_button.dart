import 'package:flutter/material.dart';

import '../pages/results.dart';

class HomePageButton extends StatelessWidget {
  const HomePageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      // create a button that navigates to the results page
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Ink(
            height: 90,
            width: 90,
            decoration: const ShapeDecoration(
              color: Color(0xff76984b),
              shape: CircleBorder(),
            ),
            child: IconButton(
              //icon: Icon(Icons.east_sharp),
              icon: Icon(Icons.arrow_right_alt_outlined),
              iconSize: 60,
              color: Colors.white,
              onPressed: () {
                Navigator.pushNamed(context, ResultsPage.id);
              },
            ),
          ),
        ],
      ),
      // child: Icon(Icons.arrow_right_alt_outlined),
    );
  }
}

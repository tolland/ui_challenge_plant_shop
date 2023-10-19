import 'package:flutter/material.dart';

import '../pages/results.dart';

class HomePageButton extends StatelessWidget {
  const HomePageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      // create a button that navigates to the results page
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, ResultsPage.id);
        },
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Color(0xff76984b),
          shape: CircleBorder(
            ///eccentricity: 1.0,
            side: BorderSide(
              color: Colors.transparent,
              width: 40,
            ),
          )
        ),
        child: Icon(Icons.arrow_right_alt_outlined,
          size: 50,
        
        ),
      ),
      // child: Icon(Icons.arrow_right_alt_outlined),
    );
  }
}

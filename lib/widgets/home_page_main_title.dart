import 'package:flutter/material.dart';

class HomePageMainTitle extends StatelessWidget {
  const HomePageMainTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Center(
        child: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            style: Theme.of(context).textTheme.displaySmall,
            text: 'Enjoy your\n',
            children: const <TextSpan>[
              TextSpan(text: 'Life with '),
              TextSpan(
                  text: 'Plants!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

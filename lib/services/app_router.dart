
import 'package:flutter/material.dart';

import '../pages/detail.dart';
import '../pages/home.dart';
import '../pages/results.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomePage.id:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case ResultsPage.id:
        return MaterialPageRoute(
          builder: (_) => ResultsPage(),
        );
      case DetailPage.id:
        final args = settings.arguments as DetailsPageArguments;
        return MaterialPageRoute(
          builder: (_) => DetailPage(
            index: args.index,
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
    }
  }
}

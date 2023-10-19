import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ResultsListHeader extends StatelessWidget {
  final int count;

  const ResultsListHeader({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
        child: Card(
          color: Colors.transparent,
          elevation: 0,
          child: SizedBox(
            height: 60,
            child: Center(
              // child: Placeholder(),
              child: AutoSizeText(
                "Found $count Results",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

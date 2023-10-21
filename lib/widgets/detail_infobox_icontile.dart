import 'package:flutter/material.dart';

class DetailInfoBoxIconTile extends StatelessWidget {
  const DetailInfoBoxIconTile({
    super.key,
    required this.iconData,
    required this.text,
    required this.subtext,
  });

  final IconData iconData;
  final String text;
  final String subtext;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: Colors.white,
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: '$text\n',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            children: <TextSpan>[
              TextSpan(
                text: subtext,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

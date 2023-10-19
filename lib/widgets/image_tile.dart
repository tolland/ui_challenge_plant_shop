import 'package:flutter/material.dart';

class ImageTile extends StatelessWidget {
  const ImageTile({
    Key? key,
    required this.image,
  }) : super(key: key);

  final Image image;

  @override
  Widget build(BuildContext context) {
    return image;
  }
}
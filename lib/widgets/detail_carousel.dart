import 'package:flutter/material.dart';
import 'package:plants_repository/plants_repository.dart';

class DetailCarousel extends StatelessWidget {
  const DetailCarousel({
    super.key,
    required this.plant,
  });

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Image.asset(plant.imageUrl);
  }
}

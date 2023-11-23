import 'package:flutter/material.dart';
import 'package:plants_repository/plants_repository.dart';

import '../widgets/detail_carousel.dart';
import '../widgets/detail_infobox.dart';
import '../widgets/detail_product_text.dart';

class DetailPagePortrait extends StatelessWidget {
  const DetailPagePortrait({
    super.key,
    required this.plant,
  });

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 8,
          child: DetailCarousel(
            plant: plant,
          ),
        ),
        Expanded(
          flex: 4,
          child: DetailProductText(
            plant: plant,
          ),
        ),
        Expanded(
          flex: 5,
          child: DetailInfoBox(
            plant: plant,
          ),
        ),
      ],
    );
  }
}

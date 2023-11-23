import 'package:flutter/material.dart';
import 'package:plants_repository/plants_repository.dart';

import '../widgets/detail_carousel.dart';
import '../widgets/detail_infobox.dart';
import '../widgets/detail_product_text.dart';

class DetailPageLandscape extends StatelessWidget {
  const DetailPageLandscape({
    super.key,
    required this.plant,
  });

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Expanded(
                flex: 6,
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
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: DetailInfoBox(
            plant: plant,
          ),
        ),
      ],
    );
  }
}

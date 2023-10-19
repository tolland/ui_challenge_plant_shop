import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:auto_size_text/auto_size_text.dart';

import 'package:plants_repository/plants_repository.dart';
import 'package:ui_challenge_plant_shop/pages/detail.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.index,
    required this.width,
    required this.plant,
  }) : super(key: key);

  final int index;
  final int width;
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
        child: Column(
          children: [
            GestureDetector(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  plant.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  DetailPage.id,
                  arguments: DetailsPageArguments(
                    index,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 14.0,
            ),
            GestureDetector(
              child: Align(
                alignment: Alignment.centerLeft,
                child: AutoSizeText(
                  plant.name,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  DetailPage.id,
                  arguments: DetailsPageArguments(
                    index,
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                plant.subtitle,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  NumberFormat.simpleCurrency(locale: 'en_US')
                      .format(plant.price / 100),
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Center(
                  child: Ink(
                    width: 40,
                    decoration: const ShapeDecoration(
                      color: Colors.black,
                      shape: CircleBorder(

                      ),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.favorite),
                      color: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

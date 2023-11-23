import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:auto_size_text/auto_size_text.dart';

import 'package:plants_repository/plants_repository.dart';
import 'package:ui_challenge_plant_shop/pages/detail.dart';

class ProductCard extends StatefulWidget {
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
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool _isFavorite = false;

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
                  widget.plant.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  DetailPage.id,
                  arguments: DetailsPageArguments(
                    widget.index,
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
                  widget.plant.name,
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
                    widget.index,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 4.0,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.plant.subtitle,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(
              height: 4.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  NumberFormat.simpleCurrency(locale: 'en_US')
                      .format(widget.plant.price / 100),
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Ink(
                  height: 30,
                  decoration: const ShapeDecoration(
                    color: Colors.black,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    icon: Icon(
                      _isFavorite ? Icons.favorite : Icons.favorite_border,
                    ),
                    iconSize: 14,
                    color: Colors.white,
                    onPressed: () {
                      setState(() {
                        _isFavorite = !_isFavorite;
                      });
                    },
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

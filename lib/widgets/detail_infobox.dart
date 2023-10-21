import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:plants_repository/plants_repository.dart';
import 'package:ui_challenge_plant_shop/widgets/detail_infobox_icontile.dart';

class DetailInfoBox extends StatelessWidget {
  const DetailInfoBox({
    super.key,
    required this.plant,
  });

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
        color: Color(0xFF76984b),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                DetailInfoBoxIconTile(
                  iconData: Icons.height,
                  text: 'Height',
                  subtext: '30-40cm',
                ),
                DetailInfoBoxIconTile(
                  iconData: Icons.thermostat,
                  text: 'Temperature',
                  subtext: '18-25°C',
                ),
                DetailInfoBoxIconTile(
                  iconData: Icons.shopping_basket,
                  text: 'Pot',
                  subtext: 'Ceramic Pot',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Total Price\n',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: NumberFormat.simpleCurrency(locale: 'en_US')
                            .format(plant.price / 100),
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF67864a),
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Add to Cart",
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

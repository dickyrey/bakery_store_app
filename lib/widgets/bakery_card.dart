import 'package:bakery_store/constants.dart';
import 'package:bakery_store/models/bakery.dart';
import 'package:flutter/material.dart';

class BakeryCard extends StatelessWidget {
  final Bakery bakery;

  const BakeryCard({Key? key, required this.bakery}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.0),
      elevation: 7.0,
      child: ListTile(
        leading: Container(
          width: 70.0,
          height: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: DecorationImage(
              image: AssetImage(bakery.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(bakery.name, style: kTitleStyle),
        subtitle: Row(
          children: <Widget>[
            const Icon(
              Icons.access_time,
              size: 14,
              color: Colors.black54,
            ),
            Text(
              " ${bakery.open} am - ${bakery.close} pm",
              style: kSubtitleStyle.copyWith(fontSize: 12.0),
            ),
            const Spacer(),
            const Icon(
              Icons.location_on,
              size: 14,
              color: Colors.black54,
            ),
            Text(
              "${bakery.distance} km",
              style: kSubtitleStyle.copyWith(fontSize: 12.0),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:bakery/constants.dart';
import 'package:bakery/models/bakery.dart';
import 'package:flutter/material.dart';

class BakeryCard extends StatelessWidget {
  final Bakery bakery;
  BakeryCard({this.bakery});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 5.0),
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
            Icon(
              Icons.access_time,
              size: 14,
              color: Colors.black54,
            ),
            Text(
              " ${bakery.open} am - ${bakery.close} pm",
              style: kSubtitleStyle.copyWith(fontSize: 12.0),
            ),
            Spacer(),
            Icon(
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

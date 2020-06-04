import 'package:bakery/constants.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  CustomListTile(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title, style: kTitleStyle),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 0.5),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Text(
              "All",
              style: kTitleStyle.copyWith(fontSize: 13.0),
            ),
          )
        ],
      ),
    );
  }
}

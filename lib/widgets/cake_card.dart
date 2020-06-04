import 'package:bakery/models/cake.dart';
import 'package:flutter/material.dart';
import 'package:bakery/constants.dart';

class CakeCard extends StatelessWidget {
  final Cake cake;
  CakeCard({this.cake});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.0,
      margin: EdgeInsets.only(left: 18.0),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 30.0,
            left: 0.0,
            right: 0.0,
            bottom: 20.0,
            child: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 150.0,
                          child: Text(
                            cake.title,
                            overflow: TextOverflow.ellipsis,
                            style: kTitleStyle,
                          ),
                        ),
                        Spacer(),
                        Text("\$${cake.price}", style: kPriceTitleStyle),
                      ],
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 150.0,
                          child: Text(
                            cake.bakery,
                            overflow: TextOverflow.ellipsis,
                            style: kSubtitleStyle,
                          ),
                        ),
                        Spacer(),
                        Text("\$${cake.price}", style: kPriceSubtitleStyle),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 0.0,
            left: 20.0,
            right: 20.0,
            child: Container(
              height: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  image: AssetImage(cake.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

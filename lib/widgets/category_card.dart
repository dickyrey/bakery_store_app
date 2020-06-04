import 'package:flutter/material.dart';
import 'package:bakery/models/category.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  CategoryCard({this.category});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      margin: EdgeInsets.only(left: 18.0),
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black45),
        color: Colors.white,
      ),
      child: SvgPicture.asset(
        category.image,
        // width: 15.0,
      ),
    );
  }
}

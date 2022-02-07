import 'package:bakery_store/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({Key? key, required this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.0,
      margin: const EdgeInsets.only(left: 18.0),
      padding: const EdgeInsets.all(12.0),
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

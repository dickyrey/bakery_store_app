import 'package:bakery_store/constants.dart';
import 'package:bakery_store/models/bakery.dart';
import 'package:bakery_store/models/cake.dart';
import 'package:bakery_store/models/category.dart';
import 'package:bakery_store/widgets/bakery_card.dart';
import 'package:bakery_store/widgets/cake_card.dart';
import 'package:bakery_store/widgets/category_card.dart';
import 'package:bakery_store/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundLight,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50.0),
        child: SafeArea(
          child: Container(
              color: kBackgroundLight,
              margin: const EdgeInsets.only(top: 25.0),
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              alignment: Alignment.centerLeft,
              child: Row(
                children: const <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 12.0),
                  Text("New York"),
                  Spacer(),
                  Icon(
                    Icons.shopping_basket,
                    color: Colors.grey,
                  ),
                ],
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 25.0),
            const CustomListTile(title: "Today's best deals"),
            const SizedBox(height: 15.0),
            SizedBox(
              width: double.infinity,
              height: 250.0,
              // color: Colors.black12,
              child: ListView.builder(
                itemCount: cakeList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  var cake = cakeList[index];
                  return CakeCard(
                    cake: cake,
                  );
                },
              ),
            ),
            const CustomListTile(title: "Discover by category"),
            const SizedBox(height: 15.0),
            SizedBox(
              width: double.infinity,
              height: 50.0,
              child: ListView.builder(
                itemCount: categoryList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  var category = categoryList[index];
                  return CategoryCard(category: category);
                },
              ),
            ),
            const SizedBox(height: 25.0),
            const CustomListTile(title: "Popular bakery"),
            const SizedBox(height: 15.0),
            ListView.builder(
              itemCount: bakeryList.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) {
                var bakery = bakeryList[index];

                return BakeryCard(bakery: bakery);
              },
            ),
          ],
        ),
      ),
    );
  }
}

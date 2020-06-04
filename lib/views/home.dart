import 'package:bakery/constants.dart';
import 'package:bakery/models/bakery.dart';
import 'package:bakery/models/cake.dart';
import 'package:bakery/models/category.dart';
import 'package:bakery/widgets/bakery_card.dart';
import 'package:bakery/widgets/cake_card.dart';
import 'package:bakery/widgets/category_card.dart';
import 'package:bakery/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundLight,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0),
        child: SafeArea(
          child: Container(
              color: kBackgroundLight,
              margin: EdgeInsets.only(top: 25.0),
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              alignment: Alignment.centerLeft,
              child: Row(
                children: <Widget>[
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
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 25.0),
              CustomListTile("Today's best deals"),
              SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                height: 250.0,
                // color: Colors.black12,
                child: ListView.builder(
                  itemCount: cakeList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    var cake = cakeList[index];
                    return CakeCard(
                      cake: cake,
                    );
                  },
                ),
              ),
              CustomListTile("Discover by category"),
              SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                height: 50.0,
                child: ListView.builder(
                  itemCount: categoryList.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    var category = categoryList[index];
                    return CategoryCard(category: category);
                  },
                ),
              ),
              SizedBox(height: 25.0),
              CustomListTile("Popular bakery"),
              SizedBox(height: 15.0),
              ListView.builder(
                itemCount: bakeryList.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (context, index) {
                  var bakery = bakeryList[index];

                  return BakeryCard(bakery: bakery);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

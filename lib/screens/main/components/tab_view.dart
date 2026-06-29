import 'package:ecommerce/models/category.dart';
import 'package:flutter/material.dart';
import 'category_card.dart';
import 'recommended_list.dart';

class TabView extends StatelessWidget {
  List<Category> categories = [
    Category(Colors.black, Colors.grey, 'Gadgets', 'assets/cap_6.png'),
    Category(Colors.black45, Colors.grey, 'Clothes', 'assets/headphone_6.png'),
    Category(Colors.black54, Colors.black87, 'Fashion', 'assets/bag_8.png'),
    Category(
      Colors.black,
      Colors.grey.shade600,
      'Home',
      'assets/shoeman_5.png',
    ),
    Category(
      Colors.grey.shade900,
      Colors.grey.shade800,
      'Beauty',
      'assets/ring_1.png',
    ),
    Category(
      Colors.black,
      Colors.black26,
      'Appliances',
      'assets/womanshoe_4.png',
    ),
  ];

  final TabController tabController;

  TabView({required this.tabController});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height / 9);
    return TabBarView(
      physics: NeverScrollableScrollPhysics(),
      controller: tabController,
      children: <Widget>[
        Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(8.0),
                height: MediaQuery.of(context).size.height / 9,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (_, index) =>
                      CategoryCard(category: categories[index]),
                ),
              ),
              SizedBox(height: 16.0),
              Flexible(child: RecommendedList()),
            ],
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(height: 16.0),
            Flexible(child: RecommendedList()),
          ],
        ),
        Column(
          children: <Widget>[
            SizedBox(height: 16.0),
            Flexible(child: RecommendedList()),
          ],
        ),
        Column(
          children: <Widget>[
            SizedBox(height: 16.0),
            Flexible(child: RecommendedList()),
          ],
        ),
        Column(
          children: <Widget>[
            SizedBox(height: 16.0),
            Flexible(child: RecommendedList()),
          ],
        ),
      ],
    );
  }
}

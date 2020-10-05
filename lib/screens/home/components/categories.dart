import 'package:flutter/material.dart';

import '../../../constants.dart';

// now state.full widget for categories

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  //
  List<String> categories = [
    "Bulbes",
    "Plante à massif",
    "Rosiers",
    "Arbres",
    "Terrasses"
  ];
  // first item selected by default
  int selectedIndex = 0;
  //
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 25,
        // TODO: learn about ListView.builder
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

  Widget buildCategory(int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // line start at the start
            children: <Widget>[
              Text(
                categories[index],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:
                        selectedIndex == index ? kTextColor : kTextLightColor),
              ),
              Container(
                margin:
                    EdgeInsets.only(top: kDefaultPadding / 4), // top padding 5
                height: 2,
                width: 30,
                // TODO: selectedIndex
                color:
                    selectedIndex == index ? Colors.black : Colors.transparent,
                // ^ draw a line only under selected category
              )
            ],
          ),
        ),
      );
}

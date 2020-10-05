import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:streetwear/constants.dart';
import 'package:streetwear/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Transform.scale(
        scale: 0.6,
        child: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg"),
          //iconSize: 7.0,
          onPressed: () {},
        ),
      ), //back button
      actions: <Widget>[
        Transform.scale(
          scale: 0.7,
          child: IconButton(
            icon: SvgPicture.asset("assets/icons/search.svg"),
            //iconSize: 7.0,
            //color: kTextColor,
            onPressed: () {},
          ),
        ), //search button
        Transform.scale(
          scale: 0.75,
          child: IconButton(
            icon: SvgPicture.asset("assets/icons/cart.svg"),
            //color: kTextColor,
            onPressed: () {},
          ),
        ), // cart button
        SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:streetwear/constants.dart';
import 'package:streetwear/models/Product.dart';
import 'package:streetwear/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // each product have unique color
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: Transform.scale(
        scale: 0.5,
        child: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            color: Colors.white,
          ),
          // TODO- learn about navigator.pop
          onPressed: () => Navigator.pop(context),
        ),
      ),
      actions: <Widget>[
        Transform.scale(
          scale: 0.7,
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        Transform.scale(
          scale: 0.75,
          child: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:practica_3/constants.dart';
import 'package:practica_3/screen/details/components/order_botton.dart';
import 'package:practica_3/screen/details/product_info.dart';

import 'components/app_bar_details.dart';
import 'components/item_image.dart';
import 'components/product_rating.dart';
import 'components/shop_name.dart';

class DetailPageTottoBurguer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: appBarDetails(context),
      body: Column(
        children: [
          ItemImage(
            srcSvg: 'assets/images/burger.png',
          ),
          DetailsCard(),
        ],
      ),
    );
  }
}

class DetailsCard extends StatelessWidget {
  const DetailsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShopName(
              shopName: 'MacDonals',
            ),
            ProductoInfo(
              productName: 'Cheese Burger',
              price: 25,
            ),
            ProductRating(
              rating: 4,
              review: 13,
            ),
            Container(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.',
                style: TextStyle(
                  color: kTextColor.withOpacity(0.40),
                  height: 1.5,
                ),
              ),
            ),
            OrderBotton(srcSVG: 'assets/icons/bag.svg',),
          ],
        ),
      ),
    );
  }
}





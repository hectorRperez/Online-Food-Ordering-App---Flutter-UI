import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practica_3/constants.dart';

class ItemCard extends StatelessWidget {
  final String srcSVG;
  final String title;
  final String nameShop;
  final Function press;
  const ItemCard({
    Key key,
    this.srcSVG,
    this.nameShop,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Container(
              margin: EdgeInsets.only(
                left: 25,
                top: 30,
                bottom: 20,
              ),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 4),
                    blurRadius: 20,
                    color: Color(0xFFB0CCE1).withOpacity(0.40),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 10, right: 10, top: 15, bottom: 6),
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.30),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      srcSVG,
                      width: size.width * 0.18,
                    ),
                  ),
                  Text(title),
                  SizedBox(
                    height: 10,
                  ),
                  Text(nameShop)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

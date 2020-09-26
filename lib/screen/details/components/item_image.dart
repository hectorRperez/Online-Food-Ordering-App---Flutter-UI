import 'package:flutter/material.dart';
import 'package:practica_3/constants.dart';

class ItemImage extends StatelessWidget {
  final String srcSvg;
  const ItemImage({
    Key key,
    this.srcSvg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.30,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              srcSvg,
            )),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:practica_3/screen/home/components/category_list.dart';
import 'package:practica_3/screen/home/components/combo_list.dart';
import 'package:practica_3/screen/home/components/discount_card.dart';
import 'package:practica_3/screen/home/components/search_box.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
          child: SearchBox(),
        ),
        CategoryList(),
        ComboList(),
        DiscountCard(size: size),
      ],
    );
  }
}



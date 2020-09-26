import 'package:flutter/material.dart';
import 'package:practica_3/screen/home/components/items_list.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ItemList(
              title: 'Combo Meal',
              isActived: true,
            ),
            ItemList(
              title: 'Chicken',
              isActived: false,
            ),
            ItemList(
              title: 'Berevages',
              isActived: false,
            ),
            ItemList(
              title: 'Snack y Sides',
              isActived: false,
            ),
            ItemList(
              title: 'Candys',
              isActived: false,
            ),
          ],
        ),
      ),
    );
  }
}

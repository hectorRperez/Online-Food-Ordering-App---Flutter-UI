import 'package:flutter/material.dart';
import 'package:practica_3/screen/details/detail_page_barburger.dart';
import 'package:practica_3/screen/home/components/item_card.dart';

class ComboList extends StatelessWidget {
  const ComboList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
            srcSVG: 'assets/icons/burger_beer.svg',
            nameShop: 'Tottos Burguers',
            title: 'Hamburguesas',
            press: (){
              Navigator.pushNamed(context, 'lib/screen/details/detail_page_tottos.dart');
            },
          ),
          ItemCard(
            srcSVG: 'assets/icons/chinese_noodles.svg',
            nameShop: 'Wendys',
            title: 'Hamburguesas',
            press: (){
              Navigator.pushNamed(context, 'lib/screen/details/detail_page_barburger.dart');
            },
          ),
          ItemCard(
            srcSVG: 'assets/icons/burger_beer.svg',
            nameShop: 'Taco bell',
            title: 'Hamburguesas',
            press: (){},
          ),
          ItemCard(
            srcSVG: 'assets/icons/burger_beer.svg',
            nameShop: 'Taco bell',
            title: 'Hamburguesas',
            press: (){},
          ),
        ],
      ),
    );
  }
}
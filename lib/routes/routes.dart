import 'package:flutter/material.dart';
import 'package:practica_3/screen/details/detail_page_barburger.dart';
import 'package:practica_3/screen/details/detail_page_tottos.dart';
import 'package:practica_3/screen/home/home_page.dart';

Map <String, WidgetBuilder> getApplicationRoute(){
  return <String, WidgetBuilder>{
    '/' : (BuildContext context) => HomePage(),
    'lib/screen/details/detail_page_tottos.dart' : (BuildContext context) => DetailPageTottoBurguer(),
    'lib/screen/details/detail_page_barburger.dart' : (BuildContext context) => DetailPageBurgerBar(),
  };
} 
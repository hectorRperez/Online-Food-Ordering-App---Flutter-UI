import 'package:flutter/material.dart';

//Mis dependencias
import 'package:practica_3/constants.dart';
import 'package:practica_3/routes/routes.dart';
import 'package:practica_3/screen/details/detail_page_tottos.dart';
import 'package:practica_3/screen/home/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          body1: TextStyle(
            color: kTextColor,
          ),
          body2: TextStyle(
            color: kTextColor,
          ),
        ),
      ),
      title: 'Material App',
      initialRoute: '/',
      routes: getApplicationRoute(),
    );
  }
}
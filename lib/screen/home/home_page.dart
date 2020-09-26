import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practica_3/screen/home/components/nav_bar.dart';

//Mis dependencias
import 'components/body_home.dart';
import 'components/build_app_bar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: NavBar(),
    );
  }
}



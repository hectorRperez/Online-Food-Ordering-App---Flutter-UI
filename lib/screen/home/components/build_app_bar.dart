import 'package:flutter/material.dart';

//Mis dependencias
import 'package:flutter_svg/svg.dart';
import 'package:practica_3/constants.dart';


//AppBar del HomePage
AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/menu.svg'),
        onPressed: () {},
      ),
      title: RichText(
        text: TextSpan(
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
          ),
          children: [
            TextSpan(
              text: 'Punk',
              style: TextStyle(color: kPrimaryColor),
            ),
            TextSpan(
              text: 'Food',
              style: TextStyle(color: kTextLightColor),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset('assets/icons/notification.svg'),
          onPressed: (){ },
        ),
      ],
    );
  }
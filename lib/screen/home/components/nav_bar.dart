import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20,bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: SvgPicture.asset('assets/icons/home.svg'),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset('assets/icons/Following.svg'),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset('assets/icons/Glyph.svg'),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset('assets/icons/person.svg'),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
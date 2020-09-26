import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:practica_3/constants.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchBox({
    Key key, this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: kSecondaryColor),
          hintText: 'Search here',
          border: InputBorder.none,
          prefixIcon: IconButton(
            icon: SvgPicture.asset('assets/icons/search.svg'),
            onPressed: (){},
          ),
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(color: kSecondaryColor.withOpacity(0.32)),
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ShopName extends StatelessWidget {
  final String shopName;
  const ShopName({
    Key key,
    this.shopName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          color: Colors.black.withOpacity(0.30),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          shopName,
          style: TextStyle(
            color: Colors.black.withOpacity(0.30),
          ),
        ),
      ],
    );
  }
}
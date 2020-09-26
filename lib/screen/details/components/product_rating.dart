import 'package:flutter/material.dart';
import 'package:practica_3/constants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ProductRating extends StatelessWidget {
  final Function press;
  final double rating;
  final int review;
  const ProductRating({
    Key key,
    this.rating,
    this.review,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SmoothStarRating(
          onRated: (value) {
            print(value);
          },
          size: 25,
          color: kPrimaryColor,
          rating: rating,
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          '$review reviews',
          style: TextStyle(color: kTextLightColor.withOpacity(0.40)),
        ),
      ],
    );
  }
}
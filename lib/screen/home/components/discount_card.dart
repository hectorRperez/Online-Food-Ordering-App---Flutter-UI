import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:practica_3/constants.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, bottom: 15),
          child: Text(
            'Offers & Discounts',
            style:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.only(
            top: 5,
            left: 25,
          ),
          width: size.width * 0.90,
          height: 166,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage('assets/images/beyond-meat-mcdonalds.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFF961F).withOpacity(0.12),
                  kPrimaryColor.withOpacity(0.7),
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                      child: SvgPicture.asset('assets/icons/macdonalds.svg')),
                  Expanded(
                      child: RichText(
                          text: TextSpan(
                    children: [
                      TextSpan(text: 'Get Discount of \n'),
                      TextSpan(
                        text: '30%\n',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text:
                            "at MacDonal's on your first order & Instant cashback",
                      ),
                    ],
                  ))),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
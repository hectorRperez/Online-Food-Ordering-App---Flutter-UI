import 'package:flutter/material.dart';
import 'package:practica_3/constants.dart';

class ItemList extends StatelessWidget {
  final String title;
  final bool isActived;
  final Function onpress;
  const ItemList({
    Key key,
    this.title,
    this.isActived,
    this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print('Mensaje');
      },
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Text(
              title,
              style: isActived
                  ? TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )
                  : TextStyle(
                      fontSize: 12,
                      color: kTextLightColor,
                    ),
            ),
          ),
          SizedBox(
            height: 1.5,
          ),
          Container(
            width: 30,
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: isActived ? kPrimaryColor : null,
            ),
          ),
        ],
      ),
    );
  }
}

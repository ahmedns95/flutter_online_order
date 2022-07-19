import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardOrderProg extends StatelessWidget {
  const CardOrderProg({
    required this.name,
    required this.img,
    required this.price,
    Key? key,
  }) : super(key: key);
  final String name, img;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(img),
        SizedBox(height: 5),
        Text(
          name,
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'bottomFont',
          ),
        ),
        Text(
          '\$ $price',
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'bottomFont',
            color: Color(0xFFB0B0C3),
          ),
        ),
      ],
    );
  }
}

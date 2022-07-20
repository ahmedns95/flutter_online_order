import 'package:flutter/material.dart';

class CardPaymentServices extends StatelessWidget {
  const CardPaymentServices({
    required this.price,
    required this.img,
    required this.title,
    Key? key,
  }) : super(key: key);

  final String img, title;
  final int price;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 300,
      child: Row(
        children: [
          Image.asset(img),
          const SizedBox(width: 25),
          Text(
            title,
            style: const TextStyle(
                color: Color(0xFF525464),
                fontFamily: 'bottomFont',
                fontSize: 17),
          ),
          const Spacer(),
          Text(
            '\$$price',
            style: const TextStyle(
                color: Color(0xFF525464),
                fontFamily: 'bottomFont',
                fontSize: 24),
          ),
        ],
      ),
    );
  }
}

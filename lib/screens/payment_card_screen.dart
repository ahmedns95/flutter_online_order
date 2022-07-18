import 'package:flutter/material.dart';
import 'package:flutter_online_order/widgets/nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/crad_info_details.dart';

class PaymentCardScreen extends StatelessWidget {
  const PaymentCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: 60),
          const NavBar(title: 'Payment Card'),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const CardInfoDetails(
                  cardNum: 4221,
                  price: 25388,
                  firstColor: 0xFF0284D8,
                  dates: '17/03',
                  secondColor: 0xFF02DA80,
                ),
                const SizedBox(height: 15),
                const CardInfoDetails(
                  cardNum: 4341,
                  price: 23488,
                  firstColor: 0xFF0284D8,
                  dates: '17/03',
                  secondColor: 0xFF02DA80,
                ),
                const SizedBox(height: 15),
                const CardInfoDetails(
                  cardNum: 24231,
                  price: 25388,
                  firstColor: 0xFF0284D8,
                  dates: '17/03',
                  secondColor: 0xFF02DA80,
                ),
                const SizedBox(height: 15),
                const CardInfoDetails(
                  cardNum: 4321,
                  price: 25388,
                  firstColor: 0xFFF6A11A,
                  dates: '17/03',
                  secondColor: 0xFFF23B14,
                ),
                const SizedBox(height: 150),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/addNewCard');
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                      ),
                      primary: const Color(0xFF20C3AF),
                    ),
                    child: const Text(
                      'Add new card',
                      style: TextStyle(fontSize: 18, fontFamily: 'bottomFont'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

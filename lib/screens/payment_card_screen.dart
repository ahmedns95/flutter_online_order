import 'package:flutter/material.dart';
import 'package:flutter_online_order/widgets/nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              children: const [
                CardInfoDetails(
                  cardNum: 4321,
                  price: 25388,
                  firstColor: 0xFF0284D8,
                  dates: '17/03',
                  secondColor: 0xFF02DA80,
                ),
                SizedBox(height: 15),
                CardInfoDetails(
                  cardNum: 4321,
                  price: 25388,
                  firstColor: 0xFF0284D8,
                  dates: '17/03',
                  secondColor: 0xFF02DA80,
                ),
                SizedBox(height: 15),
                CardInfoDetails(
                  cardNum: 4321,
                  price: 25388,
                  firstColor: 0xFF0284D8,
                  dates: '17/03',
                  secondColor: 0xFF02DA80,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CardInfoDetails extends StatelessWidget {
  const CardInfoDetails({
    Key? key,
    required this.cardNum,
    required this.price,
    required this.dates,
    required this.firstColor,
    required this.secondColor,
  }) : super(key: key);
  final int cardNum, price, firstColor, secondColor;
  final String dates;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: 350,
          decoration:
              BoxDecoration(border: Border.all(color: const Color(0xFFE2E2E0))),
          child: Row(
            children: [
              const SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(firstColor),
                          Color(secondColor),
                        ],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 14),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              '   . . . ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'bottomFont',
                                  fontSize: 6),
                            ),
                            Text(
                              cardNum.toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'bottomFont',
                                  fontSize: 6),
                            ),
                            const Spacer(),
                            Text(
                              '$dates  ',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'bottomFont',
                                  fontSize: 6),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          '  \$ ${price.toString()}',
                          style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'bottomFont',
                              fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    '   **** **** ****  4321',
                    style: TextStyle(
                      color: Color(0xFF525464),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '   17/2020',
                    style: TextStyle(
                      color: Color(0xFF838391),
                    ),
                  ),
                ],
              ),
              SvgPicture.asset(
                'assets/images/mastercard_logo.svg',
                width: 9,
                height: 16,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

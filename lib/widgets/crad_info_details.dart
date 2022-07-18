import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
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
                        const Spacer(),
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
                children: <Widget>[
                  Text(
                    '   **** ****  ****   $cardNum',
                    style: const TextStyle(
                      color: Color(0xFF525464),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '   17/2020',
                    style: TextStyle(
                      color: Color(0xFF838391),
                    ),
                  ),
                ],
              ),
              SvgPicture.asset(
                'assets/images/mastercard_logo.svg',
                width: 50,
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

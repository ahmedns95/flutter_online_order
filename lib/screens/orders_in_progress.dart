import 'package:flutter/material.dart';

import '../widgets/back_and_next_button.dart';
import '../widgets/card_order_prg.dart';
import '../widgets/nav_bar.dart';

class OrdersInProgress extends StatelessWidget {
  const OrdersInProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 60),
          const NavBar(title: 'Orders in progress'),
          Expanded(
            child: Row(
              children: [
                Spacer(),
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 60),
                      Row(
                        children: const [
                          CardOrderProg(
                            name: 'Balcony repair',
                            img: 'assets/images/Img.png',
                            price: 20,
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          CardOrderProg(
                            name: 'Balcony repair',
                            img: 'assets/images/img1.png',
                            price: 20,
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          CardOrderProg(
                            name: 'Balcony repair',
                            img: 'assets/images/img2.png',
                            price: 20,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                const Spacer(flex: 1),
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 60),
                      Row(
                        children: <Widget>[
                          CardOrderProg(
                            name: 'Balcony repair',
                            img: 'assets/images/img3.png',
                            price: 20,
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          CardOrderProg(
                            name: 'Balcony repair',
                            img: 'assets/images/img4.png',
                            price: 60,
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          CardOrderProg(
                            name: 'Balcony repair',
                            img: 'assets/images/img6.png',
                            price: 30,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          DecoratedBox(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 20,
                  blurRadius: 30,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
            child: BackAndNextButton(
                whiteButton: 'Archive',
                greenButton: 'In Work',
                pressBack: () {},
                pressNext: () {
                  Navigator.pushNamed(context, '/construction');
                }),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

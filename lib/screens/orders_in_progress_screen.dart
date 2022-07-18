import 'package:flutter/material.dart';
import 'package:flutter_online_order/screens/side_left_drawer.dart';

import '../widgets/back_and_next_button.dart';
import '../widgets/card_order_prg.dart';
import '../widgets/nav_bar.dart';

class OrdersInProgress extends StatelessWidget {
  const OrdersInProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SideLeftDrawer(
        bodyy: Column(
          children: [
            const SizedBox(height: 60),
            const NavBar(title: 'Orders in progress'),
            Expanded(
              child: Row(
                children: [
                  const Spacer(),
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
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  const Spacer(flex: 1),
                  SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 60),
                        Row(
                          children: const <Widget>[
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
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                  const Spacer(),
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
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../widgets/card_payment_services.dart';
import '../widgets/nav_bar.dart';

class PaymentForServices extends StatelessWidget {
  const PaymentForServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 60),
          const NavBar(title: 'Payment for services'),
          const SizedBox(height: 60),
          const CardPaymentServices(
            title: 'Welding works',
            img: 'assets/images/Img11.png',
            price: 20,
          ),
          const SizedBox(height: 20),
          const CardPaymentServices(
            title: 'Foundation works',
            img: 'assets/images/Img22.png',
            price: 20,
          ),
          const SizedBox(height: 20),
          const CardPaymentServices(
            title: 'Waterproofing',
            img: 'assets/images/Img33.png',
            price: 60,
          ),
          const Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 8, left: 41, right: 41),
            child: Divider(
              height: 60,
            ),
          ),
          SizedBox(
            height: 60,
            width: 300,
            child: Row(
              children: const [
                Text(
                  'Total',
                  style: TextStyle(
                      color: Color(0xFF525464),
                      fontFamily: 'bottomFont',
                      fontSize: 20),
                ),
                Spacer(),
                Text(
                  '\$100',
                  style: TextStyle(
                      color: Color(0xFF525464),
                      fontFamily: 'bottomFont',
                      fontSize: 24),
                ),
              ],
            ),
          ),
          Spacer(),
          SizedBox(
            height: 60,
            width: 335,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/orderInPro');
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
                primary: const Color(0xFF20C3AF),
              ),
              child: const Text(
                'Check out',
                style: TextStyle(fontSize: 18, fontFamily: 'bottomFont'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              {
                Navigator.pushNamed(context, '/categories');
              }
            },
            child: const Text(
              'Continue Shopping ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFFFFB19D),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

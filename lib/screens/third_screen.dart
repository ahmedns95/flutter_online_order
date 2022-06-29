import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_order/screens/constance/assets_list.dart';
import 'package:flutter_online_order/widgets/page_view_list.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: PageViewList(
              desc: 'We insure each order for the amount\n of \$500',
              title: 'Insured \norders',
              image: 'assets/images/insured_orders.png',
              press: () {
                Navigator.pushNamed(context, '/order');
              }),
        ),
      ),
    );
  }
}

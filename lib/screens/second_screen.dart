import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_order/screens/constance/assets_list.dart';
import 'package:flutter_online_order/widgets/page_view_list.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: PageViewList(
              desc:
                  'We carefully check each specialist\n and put honest ratings',
              title: 'Honest \nratings',
              image: 'assets/images/honest_ratings.png',
              press: () {
                Navigator.pushNamed(context, '/third');
              }),
        ),
      ),
    );
  }
}

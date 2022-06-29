import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_order/screens/constance/assets_list.dart';
import 'package:flutter_online_order/widgets/page_view_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PageViewList(
            desc: 'We check each specialist before\n he starts work',
            title: 'Proven \nspecialists',
            image: 'assets/images/proven_specialist.png',
            press: () {
              Navigator.pushNamed(context, '/second');
            }),
      ),
    );
  }
}

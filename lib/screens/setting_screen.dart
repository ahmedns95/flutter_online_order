import 'package:flutter/material.dart';
import 'package:flutter_online_order/widgets/nav_bar.dart';

import '../widgets/setting_card_info.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: 60),
          const NavBar(title: 'Setting'),
          const SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SettingCardInfo(
                    title: 'Payment cards',
                    press: () {
                      Navigator.pushNamed(context, '/paymentsCard');
                    }),
                const SizedBox(height: 15),
                SettingCardInfo(title: 'Write to us', press: () {}),
                const SizedBox(height: 15),
                SettingCardInfo(title: 'Rate us on app store', press: () {}),
                const SizedBox(height: 15),
                SettingCardInfo(title: 'About Us', press: () {}),
                const SizedBox(height: 60),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/setting');
                  },
                  child: const Text(
                    'Log out',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'bottomFont',
                      color: Color(0xFFFFB19D),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

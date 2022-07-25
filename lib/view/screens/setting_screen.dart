import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_order/view/screens/login_screen.dart';
import 'package:flutter_online_order/view/screens/widgets/nav_bar.dart';
import 'package:flutter_online_order/view/screens/widgets/setting_card_info.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SettingScreen extends StatelessWidget {
  FirebaseAuth _auth = FirebaseAuth.instance;
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
                    _auth.signOut();
                    Get.offAll(LoginScreen());
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

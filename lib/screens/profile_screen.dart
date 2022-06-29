import 'package:flutter/material.dart';
import 'package:flutter_online_order/screens/categories_screen.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/back_and_next_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: 60),
          Row(
            children: [
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset(
                  'assets/icons/Back.svg',
                  width: 9,
                  height: 16,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/icons/Menu.svg',
                  width: 18,
                  height: 8,
                ),
              ),
              SizedBox(width: 20),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 60),
            height: 200,
            width: 190,
            child: Column(
              children: [
                Image.asset('assets/images/Img_Profile.png'),
                const SizedBox(height: 14),
                Text(
                  'Jeremías del Pozo',
                  style: TextStyle(
                    fontFamily: 'bottomFont',
                    fontSize: 20,
                    color: Color(0xFF525464),
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'New York',
                      style: TextStyle(
                        fontFamily: 'bottomFont',
                        fontSize: 13,
                        color: Color(0xFF838391),
                      ),
                    ),
                    const SizedBox(width: 15),
                    SvgPicture.asset(
                      'assets/icons/id.svg',
                    ),
                    const SizedBox(width: 15),
                    const Text(
                      'ID: 1120611',
                      style: TextStyle(
                        fontFamily: 'bottomFont',
                        fontSize: 13,
                        color: Color(0xFF838391),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          BackAndNextButton(
            whiteButton: 'About Me',
            greenButton: 'Reviews',
            pressBack: () {},
            pressNext: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Container(
              color: Colors.red,
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: <Widget>[],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

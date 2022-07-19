import 'package:flutter/material.dart';
import 'package:flutter_online_order/screens/widgets/back_and_next_button.dart';
import 'package:flutter_online_order/screens/widgets/information_widget.dart';
import 'package:flutter_online_order/screens/widgets/nav_bar.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* drawer: const SideLeftDrawer(
        bodyy: ProfileScreen(),
      ),*/
      body: Column(
        children: [
          Column(
            children: <Widget>[
              const SizedBox(height: 60),
              const NavBar(title: ''),
              Container(
                margin: const EdgeInsets.only(top: 50),
                height: 200,
                width: 190,
                child: Column(
                  children: [
                    Image.asset('assets/images/Img_Profile.png'),
                    const SizedBox(height: 14),
                    const Text(
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
                pressNext: () {
                  Navigator.pushNamed(context, '/notification');
                },
              ),
            ],
          ),
          const SizedBox(height: 40),
          Expanded(
            child: Container(
              color: const Color(0xFF525464),
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[],
                  ),
                  const InformationWidget(
                    icon: 'assets/icons/Phone_icon.svg',
                    title: 'Phone number',
                    text: '+966 532323232',
                  ),
                  const SizedBox(height: 15),
                  const InformationWidget(
                    icon: 'assets/icons/email.svg',
                    title: 'Email',
                    text: 'Ali@gmail.com',
                  ),
                  const SizedBox(height: 15),
                  const InformationWidget(
                    icon: 'assets/icons/Completed_icon.svg',
                    title: 'Completed projects',
                    text: '245',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

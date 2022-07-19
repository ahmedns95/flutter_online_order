import 'package:flutter/material.dart';
import 'package:flutter_online_order/screens/side_left_drawer.dart';
import 'package:flutter_online_order/screens/widgets/card_nofication_info.dart';
import 'package:flutter_online_order/screens/widgets/nav_bar.dart';
import 'package:flutter_svg/svg.dart';

class NoficationScreen extends StatelessWidget {
  const NoficationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SideLeftDrawer(
        bodyy: Column(
          children: [
            const SizedBox(height: 60),
            const NavBar(title: 'Notification'),
            const CardNoficationInfo(
              image: 'assets/images/Img_Profile.png',
              name: 'Ahmed Alnassar',
              company: 'Bitrow Company',
              comment:
                  'Sorry, all the artists in the Interior Design category are busy right now. '
                  'If your task is still relevant - go to the task details page and click "Extend task”.',
            ),
            const CardNoficationInfo(
              image: 'assets/images/Img_Profile.png',
              name: 'Cole Payne',
              company: 'Corporation Kraton',
              comment:
                  'We have found a contractor for your task "Cleaning services”. Please see the details.',
            ),
            const CardNoficationInfo(
              image: 'assets/images/Img_Profile.png',
              name: 'Ahmed Alnassar',
              company: 'Bitrow Company',
              comment:
                  'Sorry, all the artists in the Interior Design category are busy right now. '
                  'If your task is still relevant - go to the task details page and click "Extend task”.',
            ),
            const SizedBox(height: 20),
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
                  'View all',
                  style: TextStyle(fontSize: 18, fontFamily: 'bottomFont'),
                ),
              ),
            ),
          ],
        ),
      ),
      /*body: Column(
        children: [
          const SizedBox(height: 60),
          const NavBar(title: 'Notification'),
          const CardNoficationInfo(
            image: 'assets/images/Img_Profile.png',
            name: 'Ahmed Alnassar',
            company: 'Bitrow Company',
            comment:
                'Sorry, all the artists in the Interior Design category are busy right now. '
                'If your task is still relevant - go to the task details page and click "Extend task”.',
          ),
          const CardNoficationInfo(
            image: 'assets/images/Img_Profile.png',
            name: 'Cole Payne',
            company: 'Corporation Kraton',
            comment:
                'We have found a contractor for your task "Cleaning services”. Please see the details.',
          ),
          const CardNoficationInfo(
            image: 'assets/images/Img_Profile.png',
            name: 'Ahmed Alnassar',
            company: 'Bitrow Company',
            comment:
                'Sorry, all the artists in the Interior Design category are busy right now. '
                'If your task is still relevant - go to the task details page and click "Extend task”.',
          ),
          const SizedBox(height: 20),
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
                'View all',
                style: TextStyle(fontSize: 18, fontFamily: 'bottomFont'),
              ),
            ),
          ),
        ],
      ),*/
    );
  }
}

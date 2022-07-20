import 'package:flutter/material.dart';
import 'package:drawerbehavior/drawerbehavior.dart';

class SideLeftDrawer extends StatelessWidget {
  const SideLeftDrawer({
    Key? key,
    required this.bodyy,
  }) : super(key: key);
  final Widget bodyy;
  @override
  Widget build(BuildContext context) {
    return DrawerScaffold(
      drawers: [
        SideDrawer(
          percentage: 0.8,
          direction: Direction.left,
          animation: true,
          color: const Color(0xff525464),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: const CircleAvatar(
                    backgroundColor: Color(0xff20C3AF),
                    radius: 38,
                    child: Icon(
                      color: Colors.white,
                      Icons.home,
                      size: 36,
                    ),
                  ),
                ),
                const SizedBox(height: 11),
                const Text(
                  'Home',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'bottomFont',
                      fontSize: 16),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {},
                  child: const CircleAvatar(
                    backgroundColor: Color(0xff323440),
                    radius: 38,
                    child: Icon(
                      color: Colors.white,
                      Icons.person,
                      size: 36,
                    ),
                  ),
                ),
                const SizedBox(height: 11),
                const Text(
                  'Profile',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'bottomFont',
                      fontSize: 16),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/setting');
                  },
                  child: const CircleAvatar(
                    backgroundColor: Color(0xff323440),
                    radius: 38,
                    child: Icon(
                      color: Colors.white,
                      Icons.settings,
                      size: 36,
                    ),
                  ),
                ),
                const SizedBox(height: 11),
                const Text(
                  'Setting',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'bottomFont',
                      fontSize: 16),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {},
                  child: const CircleAvatar(
                    backgroundColor: Color(0xff323440),
                    radius: 38,
                    child: Icon(
                      color: Colors.white,
                      Icons.email,
                      size: 36,
                    ),
                  ),
                ),
                const SizedBox(height: 11),
                const Text(
                  'Messages',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'bottomFont',
                      fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ],
      body: bodyy,
    );
  }
}

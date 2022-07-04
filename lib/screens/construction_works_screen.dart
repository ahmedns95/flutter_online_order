import 'package:flutter/material.dart';
import 'package:flutter_online_order/widgets/back_and_next_button.dart';

import '../widgets/nav_bar.dart';
import '../widgets/search_with_icon.dart';

class ConstructionWorks extends StatelessWidget {
  const ConstructionWorks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isActive = true;
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: 60),
          const NavBar(title: 'Construction works'),
          const SizedBox(height: 20),
          const SearchWithIcon(hintText: 'Search by category'),
          const SizedBox(height: 20),
          Container(
            width: 350,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(
                color: isActive == true
                    ? const Color(0xFFFFB19D)
                    : const Color(0xFFF7F7F7),
              ),
            ),
            child: Row(
              children: <Widget>[
                const SizedBox(width: 20),
                const Text(
                  'Welding work',
                  style: TextStyle(
                      color: Color(0xFF525464),
                      fontFamily: 'bottomFont',
                      fontSize: 18),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    print('isActive');
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    color: isActive == true
                        ? const Color(0xFFFFB19D)
                        : const Color(0xFFF7F7F7),
                    child: const Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 350,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(
                color: isActive == false
                    ? const Color(0xFFFFB19D)
                    : const Color(0xFFE2E2E0),
              ),
            ),
            child: Row(
              children: <Widget>[
                const SizedBox(width: 20),
                const Text(
                  'Roofing',
                  style: TextStyle(
                      color: Color(0xFF525464),
                      fontFamily: 'bottomFont',
                      fontSize: 18),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    setState() {
                      isActive = false;
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    color: isActive == false
                        ? const Color(0xFFFFB19D)
                        : const Color(0xFFE2E2E0),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 350,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(
                color: isActive == false
                    ? const Color(0xFFFFB19D)
                    : const Color(0xFFE2E2E0),
              ),
            ),
            child: Row(
              children: <Widget>[
                const SizedBox(width: 20),
                const Text(
                  'Welding work',
                  style: TextStyle(
                      color: Color(0xFF525464),
                      fontFamily: 'bottomFont',
                      fontSize: 18),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    setState() {
                      isActive = false;
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    color: isActive == false
                        ? const Color(0xFFFFB19D)
                        : const Color(0xFFE2E2E0),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 350,
            height: 60,
            decoration: BoxDecoration(
              border: Border.all(
                color: isActive == true
                    ? const Color(0xFFFFB19D)
                    : const Color(0xFFF7F7F7),
              ),
            ),
            child: Row(
              children: <Widget>[
                const SizedBox(width: 20),
                const Text(
                  'Foundation works',
                  style: TextStyle(
                      color: Color(0xFF525464),
                      fontFamily: 'bottomFont',
                      fontSize: 18),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    print('isActive');
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    color: isActive == true
                        ? const Color(0xFFFFB19D)
                        : const Color(0xFFF7F7F7),
                    child: const Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          BackAndNextButton(
              pressBack: () {},
              pressNext: () {
                Navigator.pushNamed(context, '/payment');
              },
              whiteButton: 'Skip',
              greenButton: "Done"),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

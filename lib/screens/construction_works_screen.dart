import 'package:flutter/material.dart';
import 'package:flutter_online_order/screens/side_left_drawer.dart';
import 'package:flutter_online_order/widgets/back_and_next_button.dart';

import '../widgets/nav_bar.dart';
import '../widgets/search_with_icon.dart';

class ConstructionWorks extends StatefulWidget {
  const ConstructionWorks({Key? key}) : super(key: key);

  @override
  State<ConstructionWorks> createState() => _ConstructionWorksState();
}

class _ConstructionWorksState extends State<ConstructionWorks> {
  @override
  Widget build(BuildContext context) {
    bool isActive = false;
    return Scaffold(
      body: SideLeftDrawer(
        bodyy: Column(
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
                  color: const Color(
                      0xFFFFB19D), /* isActive
                      ? const Color(0xFFFFB19D)
                      : const Color(0xFF525464),*/
                ),
              ),
              child: Row(
                children: <Widget>[
                  const SizedBox(width: 20),
                  const Text(
                    'Waterproofing',
                    style: TextStyle(
                        color: Color(0xFF525464),
                        fontFamily: 'bottomFont',
                        fontSize: 18),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      setState(() {
                        //print('IsActivePressed');
                        isActive = !isActive;
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xFFFFB19D),
                      /*isActive == true
                              ? const Color(0xFFFFB19D)
                              : const Color(0xFFE2E2E0),*/
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
                  color: const Color(0xFFE2E2E0),
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
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xFFE2E2E0),
                      /*isActive == false
                          ? const Color(0xFFFFB19D)
                          : const Color(0xFFE2E2E0),*/
                      child: const Icon(
                        Icons.add,
                        color: Color(0xFF525464),
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
                  color: const Color(0xFFE2E2E0),
                  /*isActive
                      ? const Color(0xFFFFB19D)
                      : const Color(0xFFE2E2E0),*/
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
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xFFE2E2E0),

                      /*isActive
                          ? const Color(0xFFFFB19D)
                          : const Color(0xFFE2E2E0),*/
                      child: const Icon(
                        Icons.add,
                        color: Color(0xFF525464),
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
                  color: const Color(0xFFFFB19D),
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
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xFFFFB19D),
                      /*isActive == false
                          ? const Color(0xFFFFB19D)
                          : const Color(0xFFF7F7F7),*/
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
                  color: const Color(0xFFE2E2E0),
                  /*isActive
                      ? const Color(0xFFFFB19D)
                      : const Color(0xFFE2E2E0),*/
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
                      isActive = true;
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xFFE2E2E0),

                      /*isActive
                          ? const Color(0xFFFFB19D)
                          : const Color(0xFF525464),*/
                      child: const Icon(
                        Icons.add,
                        color: Color(0xFF525464),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ConstCard(
              isActive: true,
              addedColor: const Color(0xFFFFB19D),
              icon: Icons.check,
              checkedColor: const Color(0xFFFFB19D),
              title: 'Foundation works',
              press: () {
                setState(() {});
              },
            ),
            const Spacer(),
            BackAndNextButton(
                pressBack: () {
                  setState(() {
                    isActive = true;
                  });
                },
                pressNext: () {
                  Navigator.pushNamed(context, '/payment');
                },
                whiteButton: 'Skip',
                greenButton: "Done"),
            const SizedBox(height: 30),
          ],
        ),
      ),
      /* body: Column(
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
                  color: const Color(0xFFFFB19D),
                  */ /* isActive == false
                      ? const Color(0xFFFFB19D)
                      : const Color(0xFFF7F7F7),*/ /*
                ),
              ),
              child: Row(
                children: <Widget>[
                  const SizedBox(width: 20),
                  const Text(
                    'Waterproofing',
                    style: TextStyle(
                        color: Color(0xFF525464),
                        fontFamily: 'bottomFont',
                        fontSize: 18),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xFFFFB19D),
                      */ /*isActive == false
                          ? const Color(0xFFFFB19D)
                          : const Color(0xFFF7F7F7),*/ /*
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
                  color: const Color(0xFFE2E2E0),
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
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xFFE2E2E0),
                      */ /*isActive == false
                          ? const Color(0xFFFFB19D)
                          : const Color(0xFFE2E2E0),*/ /*
                      child: const Icon(
                        Icons.add,
                        color: Color(0xFF525464),
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
                  color: const Color(0xFFE2E2E0),
                  */ /*isActive
                      ? const Color(0xFFFFB19D)
                      : const Color(0xFFE2E2E0),*/ /*
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
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xFFE2E2E0),

                      */ /*isActive
                          ? const Color(0xFFFFB19D)
                          : const Color(0xFFE2E2E0),*/ /*
                      child: const Icon(
                        Icons.add,
                        color: Color(0xFF525464),
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
                  color: const Color(0xFFFFB19D),
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
                    onTap: () {},
                    child: Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xFFFFB19D),
                      */ /*isActive == false
                          ? const Color(0xFFFFB19D)
                          : const Color(0xFFF7F7F7),*/ /*
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
                  color: const Color(0xFFE2E2E0),
                  */ /*isActive
                      ? const Color(0xFFFFB19D)
                      : const Color(0xFFE2E2E0),*/ /*
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
                      isActive = true;
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      color: const Color(0xFFE2E2E0),

                      */ /*isActive
                          ? const Color(0xFFFFB19D)
                          : const Color(0xFFE2E2E0),*/ /*
                      child: const Icon(
                        Icons.add,
                        color: Color(0xFF525464),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ConstCard(
              isActive: isActive,
              addedColor: '0xFFFFB19D',
              icon: Icons.check,
              checkedColor: '0xFFF7F7F7',
              title: 'Foundation works',
              press: () {
                setState(() {
                  isActive = !isActive;
                  print('hello');
                });
              },
            ),
            const Spacer(),
            BackAndNextButton(
                pressBack: () {
                  setState(() {
                    isActive = true;
                  });
                },
                pressNext: () {
                  Navigator.pushNamed(context, '/payment');
                },
                whiteButton: 'Skip',
                greenButton: "Done"),
            const SizedBox(height: 30),
          ],
        ),*/
    );
  }
}

class ConstCard extends StatelessWidget {
  const ConstCard({
    Key? key,
    this.isActive = false,
    required this.title,
    required this.addedColor,
    required this.checkedColor,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final bool isActive;
  final String title;
  final Color addedColor, checkedColor;
  final IconData icon;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(
          color: (isActive) ? addedColor : checkedColor,
        ),
      ),
      child: Row(
        children: <Widget>[
          const SizedBox(width: 20),
          Text(
            title,
            style: const TextStyle(
                color: Color(0xFF525464),
                fontFamily: 'bottomFont',
                fontSize: 18),
          ),
          const Spacer(),
          GestureDetector(
            onTap: press,
            child: Container(
              height: 60,
              width: 60,
              color: (isActive)
                  ? addedColor
                  : checkedColor, // const Color(0xFFFFB19D),
              /*isActive == false
                  ? const Color(0xFFFFB19D)
                  : const Color(0xFFF7F7F7),*/
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

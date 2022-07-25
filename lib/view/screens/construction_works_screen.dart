import 'package:flutter/material.dart';
import 'package:flutter_online_order/view/screens/side_left_drawer.dart';
import 'package:flutter_online_order/view/screens/widgets/back_and_next_button.dart';
import 'package:flutter_online_order/view/screens/widgets/nav_bar.dart';
import 'package:flutter_online_order/view/screens/widgets/search_with_icon.dart';

class ConstructionWorks extends StatefulWidget {
  const ConstructionWorks({Key? key}) : super(key: key);

  @override
  State<ConstructionWorks> createState() => _ConstructionWorksState();
}

class _ConstructionWorksState extends State<ConstructionWorks> {
  bool isActive = false;
  bool isActive1 = false;
  bool isActive2 = false;
  bool isActive3 = false;
  bool isActive4 = false;
  bool isActive5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*body: SideLeftDrawer(
        bodyy:*/
      body: Column(
        children: <Widget>[
          const SizedBox(height: 60),
          const NavBar(title: 'Construction works'),
          const SizedBox(height: 20),
          const SearchWithIcon(hintText: 'Search by category'),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              setState(() {
                isActive = !isActive;
              });
            },
            child: Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: //const Color(0xFFFFB19D),
                      isActive ? Color(0xFFFFB19D) : Color(0xFFE2E2E0),
                ),
              ),
              child: Row(
                children: <Widget>[
                  const SizedBox(width: 20),
                  const Text(
                    'Welding works',
                    style: TextStyle(
                        color: Color(0xFF525464),
                        fontFamily: 'bottomFont',
                        fontSize: 18),
                  ),
                  const Spacer(),
                  Container(
                    height: 60,
                    width: 60,
                    color: //const Color(0xFFFFB19D),
                        isActive ? Color(0xFFFFB19D) : Color(0xFFE2E2E0),
                    child: Icon(
                      isActive ? Icons.check : Icons.add,
                      color: isActive ? Colors.white : Color(0xFF525464),
                    ),
                    //),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              setState(() {
                isActive1 = !isActive1;
              });
            },
            child: Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: //const Color(0xFFFFB19D),
                      isActive1 ? Color(0xFFFFB19D) : Color(0xFFE2E2E0),
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
                  Container(
                    height: 60,
                    width: 60,
                    color: //const Color(0xFFFFB19D),
                        isActive1 ? Color(0xFFFFB19D) : Color(0xFFE2E2E0),
                    child: Icon(
                      isActive1 ? Icons.check : Icons.add,
                      color: isActive1 ? Colors.white : Color(0xFF525464),
                    ),
                    //),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              setState(() {
                isActive2 = !isActive2;
              });
            },
            child: Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: //const Color(0xFFFFB19D),
                      isActive2 ? Color(0xFFFFB19D) : Color(0xFFE2E2E0),
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
                  Container(
                    height: 60,
                    width: 60,
                    color: //const Color(0xFFFFB19D),
                        isActive2 ? Color(0xFFFFB19D) : Color(0xFFE2E2E0),
                    child: Icon(
                      isActive2 ? Icons.check : Icons.add,
                      color: isActive2 ? Colors.white : Color(0xFF525464),
                    ),
                    //),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              setState(() {
                isActive3 = !isActive3;
              });
            },
            child: Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: //const Color(0xFFFFB19D),
                      isActive3 ? Color(0xFFFFB19D) : Color(0xFFE2E2E0),
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
                  Container(
                    height: 60,
                    width: 60,
                    color: //const Color(0xFFFFB19D),
                        isActive3 ? Color(0xFFFFB19D) : Color(0xFFE2E2E0),
                    child: Icon(
                      isActive3 ? Icons.check : Icons.add,
                      color: isActive3 ? Colors.white : Color(0xFF525464),
                    ),
                    //),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              setState(() {
                isActive4 = !isActive4;
              });
            },
            child: Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: //const Color(0xFFFFB19D),
                      isActive4 ? Color(0xFFFFB19D) : Color(0xFFE2E2E0),
                ),
              ),
              child: Row(
                children: <Widget>[
                  const SizedBox(width: 20),
                  const Text(
                    'Architecture',
                    style: TextStyle(
                        color: Color(0xFF525464),
                        fontFamily: 'bottomFont',
                        fontSize: 18),
                  ),
                  const Spacer(),
                  Container(
                    height: 60,
                    width: 60,
                    color: //const Color(0xFFFFB19D),
                        isActive4 ? Color(0xFFFFB19D) : Color(0xFFE2E2E0),
                    child: Icon(
                      isActive4 ? Icons.check : Icons.add,
                      color: isActive4 ? Colors.white : Color(0xFF525464),
                    ),
                    //),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: () {
              setState(() {
                isActive5 = !isActive5;
              });
            },
            child: Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: //const Color(0xFFFFB19D),
                      isActive5 ? Color(0xFFFFB19D) : Color(0xFFE2E2E0),
                ),
              ),
              child: Row(
                children: <Widget>[
                  const SizedBox(width: 20),
                  const Text(
                    'Design',
                    style: TextStyle(
                        color: Color(0xFF525464),
                        fontFamily: 'bottomFont',
                        fontSize: 18),
                  ),
                  const Spacer(),
                  Container(
                    height: 60,
                    width: 60,
                    color: //const Color(0xFFFFB19D),
                        isActive5 ? Color(0xFFFFB19D) : Color(0xFFE2E2E0),
                    child: Icon(
                      isActive5 ? Icons.check : Icons.add,
                      color: isActive5 ? Colors.white : Color(0xFF525464),
                    ),
                    //),
                  ),
                ],
              ),
            ),
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
    return InkWell(
      onTap: press,
      child: Container(
        width: 350,
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(
            color: isActive ? Color(0xFFFFB19D) : Color(0xFFE2E2E0),
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
            Container(
                height: 60,
                width: 60,
                color: isActive ? Color(0xFFFFB19D) : Color(0xFFE2E2E0),
                child: Icon(
                  isActive ? Icons.check : Icons.add,
                  color: isActive ? Colors.white : Color(0xFF525464),
                )),
          ],
        ),
      ),
    );
  }
}

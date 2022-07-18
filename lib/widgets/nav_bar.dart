import 'package:drawerbehavior/drawer_scaffold.dart';
import 'package:drawerbehavior/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class NavBar extends StatefulWidget {
  const NavBar({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
        const Spacer(),
        Text(
          widget.title,
          style: TextStyle(
              fontFamily: 'myFont', fontSize: 23, color: Color(0xFF525464)),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            setState(() {
              Navigator.pushNamed(context, '/side');
              /* DrawerScaffold(
                drawers: [
                  SideDrawer(
                    percentage: 0.8,
                    direction: Direction.left,
                    animation: true,
                    color: Theme.of(context).primaryColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const <Widget>[
                        CircleAvatar(
                          child: Icon(Icons.home),
                        )
                      ],
                    ),
                  ),
                ],
              );*/
            });
          },
          child: SvgPicture.asset(
            'assets/icons/Menu.svg',
            width: 18,
            height: 8,
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}

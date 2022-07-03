import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;
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
          title,
          style: TextStyle(
              fontFamily: 'myFont', fontSize: 23, color: Color(0xFF525464)),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/side');
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

import 'package:flutter/material.dart';

class SettingCardInfo extends StatelessWidget {
  const SettingCardInfo({
    required this.title,
    required this.press,
    Key? key,
  }) : super(key: key);
  final String title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 70,
      decoration: const BoxDecoration(
        color: Color(0xFFF7F7F7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              color: Color(0xff838391),
              fontFamily: 'bottomFont',
              fontSize: 20,
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: press,
            child: const Icon(
              Icons.navigate_next,
              size: 35,
              color: Color(0xff525464),
            ),
          ),
        ],
      ),
    );
  }
}

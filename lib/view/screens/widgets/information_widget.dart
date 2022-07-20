import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InformationWidget extends StatelessWidget {
  const InformationWidget(
      {Key? key, required this.title, required this.icon, required this.text})
      : super(key: key);
  final String title, text, icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFE2E2E0),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(width: 30),
          SvgPicture.asset(
            icon,
          ),
          const SizedBox(
            height: 45,
            child: VerticalDivider(
              thickness: 1,
              color: Color(0xFFECECEB),
              width: 60,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 20),
              Text(
                title,
                style: const TextStyle(color: Colors.white30),
              ),
              const SizedBox(height: 8),
              Text(
                text,
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchWithIcon extends StatelessWidget {
  const SearchWithIcon({
    Key? key,
    required this.hintText,
  }) : super(key: key);
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFF7F7F7),
          border: InputBorder.none,
          hintText: hintText,
          suffixIcon: InkWell(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: SizedBox(
                child: SvgPicture.asset(
                  'assets/icons/Search_icon.svg',
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),
          ),
          hintStyle: const TextStyle(
            color: Color(0xFF838391),
          ),
        ),
      ),
    );
  }
}

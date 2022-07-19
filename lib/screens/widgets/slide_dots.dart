import 'package:flutter/material.dart';

class SlideDots extends StatelessWidget {
  bool isActive;
  SlideDots(this.isActive, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: isActive ? 13 : 9,
      width: isActive ? 25 : 9,
      decoration: BoxDecoration(
          color: isActive ? const Color(0xffB5C3C7) : const Color(0xffE9EDEE),
          borderRadius: BorderRadius.all(Radius.circular(7)),
          shape: BoxShape.rectangle),
    );
  }
}

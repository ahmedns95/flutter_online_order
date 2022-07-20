import 'package:flutter/cupertino.dart';

class SocialMediaContainer extends StatelessWidget {
  const SocialMediaContainer({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 100,
      decoration: BoxDecoration(
          border: Border.all(
        color: const Color(0xFFE2E2E0),
      )),
      child: Image.asset(
        image,
        width: 6,
        height: 14,
      ),
    );
  }
}

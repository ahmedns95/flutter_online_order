import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ReusableCardCategories extends StatelessWidget {
  const ReusableCardCategories({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image, title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFFF5F5F5),
          ),
        ),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 315,
              height: 80,
              child: Row(
                children: <Widget>[
                  Container(
                    height: 80,
                    width: 80,
                    color: const Color(0xFFF5F5F5),
                    child: Image.asset(
                      image,
                      width: 40,
                      height: 40,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'bottomFont',
                      fontSize: 19,
                      color: Color(0xFF838391),
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset('assets/icons/Path.svg'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_online_order/model/assets_list.dart';

class PageViewList extends StatelessWidget {
  const PageViewList({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: 60.0, left: 20, right: 20),
      child: Column(
        children: [
          Text(
            slideList[index].title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
              color: Color(0xFF525464),
              fontFamily: "myFont",
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 70),
          Image.asset(
            slideList[index].image,
            width: 238,
            height: 285,
          ),
          const SizedBox(height: 70),
          Text(
            slideList[index].desc,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              color: Color(0xFF838391),
              fontFamily: "myFont",
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 50),
          /*  SizedBox(
            height: 60,
            width: 315,
            child: ElevatedButton(
              onPressed: press,
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.zero),
                ),
                primary: Color(0xFF20C3AF),
              ),
              child: const Text(
                'Next',
                style: TextStyle(fontSize: 18, fontFamily: 'bottomFont'),
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}

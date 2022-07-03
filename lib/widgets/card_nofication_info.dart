import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardNoficationInfo extends StatelessWidget {
  const CardNoficationInfo(
      {Key? key,
      required this.image,
      required this.name,
      required this.comment,
      required this.company})
      : super(key: key);
  final String image, name, company, comment;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 30, right: 30),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Image.asset(
                image,
                width: 60,
                height: 60,
              ),
              SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    name,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'bottomFont'),
                  ),
                  SizedBox(height: 6),
                  Text(
                    company,
                    style: const TextStyle(
                      color: Color(0xFF838391),
                      fontFamily: 'bottomFont',
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            comment,
            style: const TextStyle(
              color: Color(0xFF616173),
              fontFamily: 'bottomFont',
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}

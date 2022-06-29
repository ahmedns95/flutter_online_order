import 'package:flutter/material.dart';

class BackAndNextButton extends StatelessWidget {
  const BackAndNextButton({
    Key? key,
    required this.pressBack,
    required this.pressNext,
    required this.whiteButton,
    required this.greenButton,
  }) : super(key: key);
  final VoidCallback pressBack, pressNext;
  final String whiteButton, greenButton;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(),
        SizedBox(
          height: 60,
          width: 150,
          child: ElevatedButton(
            onPressed: pressBack,
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              shadowColor: Colors.transparent,
              side: const BorderSide(
                color: Color(0xFFF5F5F5),
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero),
              ),
              primary: Colors.white,
            ),
            child: Text(
              whiteButton,
              style: const TextStyle(
                fontSize: 18,
                fontFamily: 'bottomFont',
                color: Color(0xFF838391),
              ),
            ),
          ),
        ),
        const Spacer(),
        SizedBox(
          height: 60,
          width: 150,
          child: ElevatedButton(
            onPressed: pressNext,
            style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero),
              ),
              primary: const Color(0xFF20C3AF),
            ),
            child: Text(
              greenButton,
              style: const TextStyle(fontSize: 18, fontFamily: 'bottomFont'),
            ),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}

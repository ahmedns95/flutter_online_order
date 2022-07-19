import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_order/screens/widgets/nav_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            const NavBar(title: 'Sign Up'),
            const SizedBox(height: 50),
            Image.asset(
              'assets/images/sign_up.png',
              height: 145,
              width: 100,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextField(
                style: TextStyle(),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF7F7F7),
                  border: InputBorder.none,
                  hintText: 'Username',
                  hintStyle: TextStyle(
                    color: Color(0xFF838391),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextField(
                style: TextStyle(),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF7F7F7),
                  border: InputBorder.none,
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Color(0xFF838391),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: TextField(
                style: TextStyle(),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(0xFFF7F7F7),
                  border: InputBorder.none,
                  hintText: 'Confirm password',
                  hintStyle: TextStyle(
                    color: Color(0xFF838391),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 60,
              width: 315,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/categories');
                },
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF20C3AF),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 24, fontFamily: 'bottomFont'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'or',
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'bottomFont',
                  color: Color(0xFF838391),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              child: Row(
                children: <Widget>[
                  const Spacer(),
                  Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Color(0xFFE2E2E0),
                    )),
                    child: Image.asset(
                      'assets/images/facebook.png',
                      width: 6,
                      height: 14,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: const Color(0xFFE2E2E0),
                    )),
                    child: Image.asset(
                      'assets/images/twitter_icon.png',
                      width: 6,
                      height: 14,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: const Color(0xFFE2E2E0),
                    )),
                    child: Image.asset(
                      'assets/images/linkedin.png',
                      width: 6,
                      height: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account? ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF838391),
                  ),
                ),
                InkWell(
                  onTap: () {
                    {
                      Navigator.pushNamed(context, '/login');
                    }
                  },
                  child: const Text(
                    'Sign In ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFFFFB19D),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

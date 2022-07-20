import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_order/view/screens/widgets/custom_text_form_field.dart';
import 'package:flutter_online_order/view/screens/widgets/nav_bar.dart';
import 'package:flutter_online_order/view/screens/widgets/social_media_container.dart';


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
            CustomTextFormField(
              onSave: (newValue) {},
              hintText: 'Username',
              validator: (value) {},
            ),
            CustomTextFormField(
              onSave: (newValue) {},
              hintText: 'Password',
              validator: (value) {},
            ),
            CustomTextFormField(
              onSave: (newValue) {},
              hintText: 'Confirm password',
              validator: (value) {},
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
                  primary: const Color(0xFF20C3AF),
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
                children: const <Widget>[
                  Spacer(),
                  SocialMediaContainer(image: 'assets/images/facebook.png'),
                  Spacer(),
                  SocialMediaContainer(image: 'assets/images/twitter_icon.png'),
                  Spacer(),
                  SocialMediaContainer(image: 'assets/images/linkedin.png'),
                  Spacer(),
                ],
              ),
            ),
            const SizedBox(height: 60),
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

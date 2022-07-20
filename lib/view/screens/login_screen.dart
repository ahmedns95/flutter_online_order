import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_order/model/auth_view_model.dart';
import 'package:flutter_online_order/view/screens/signup_screen.dart';
import 'package:flutter_online_order/view/screens/widgets/custom_text_form_field.dart';
import 'package:flutter_online_order/view/screens/widgets/nav_bar.dart';
import 'package:flutter_online_order/view/screens/widgets/social_media_container.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends GetWidget<AuthViewModel> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 60),
              const NavBar(title: 'Sign In'),
              const SizedBox(height: 50),
              Image.asset(
                'assets/images/sign_in.png',
                height: 145,
                width: 100,
              ),
              CustomTextFormField(
                validator: (value) {
                  if (value == null) {
                    print("Validation ERROR");
                  }
                },
                onSave: (value) {
                  controller.email = value;
                },
                hintText: 'Email',
              ),
              CustomTextFormField(
                validator: (value) {
                  if (value == null) {
                    print("Validation ERROR");
                  }
                },
                onSave: (value) {
                  controller.password = value;
                },
                hintText: 'Password',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200, top: 10),
                child: InkWell(
                  onTap: () {},
                  child: const Text(
                    'Forgot your password? ',
                    style: TextStyle(
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
                    _formKey.currentState?.save();

                    if (_formKey.currentState!.validate()) {
                      controller.signInWithEmailAndPassword();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.zero),
                    ),
                    primary: const Color(0xFF20C3AF),
                  ),
                  child: const Text(
                    'Login',
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
                    SocialMediaContainer(
                        image: 'assets/images/twitter_icon.png'),
                    Spacer(),
                    SocialMediaContainer(image: 'assets/images/linkedin.png'),
                    Spacer(),
                  ],
                ),
              ),
              const SizedBox(height: 90),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don’t have an account? ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF838391),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      {
                        Get.to(() => SignupScreen());
                      }
                    },
                    child: const Text(
                      'Signup ',
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
      ),
    );
  }
}

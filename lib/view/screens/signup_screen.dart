import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_order/model/auth_view_model.dart';
import 'package:flutter_online_order/view/screens/login_screen.dart';
import 'package:flutter_online_order/view/screens/widgets/custom_text_form_field.dart';
import 'package:flutter_online_order/view/screens/widgets/nav_bar.dart';
import 'package:flutter_online_order/view/screens/widgets/social_media_container.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SignupScreen extends GetWidget<AuthViewModel> {
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
              const NavBar(title: 'Sign Up'),
              const SizedBox(height: 50),
              Image.asset(
                'assets/images/sign_up.png',
                height: 145,
                width: 100,
              ),
              CustomTextFormField(
                onSave: (newValue) {
                  controller.name = newValue;
                },
                hintText: 'Name',
                validator: (value) {},
              ),
              CustomTextFormField(
                onSave: (newValue) {
                  controller.email = newValue;
                },
                hintText: 'Email',
                validator: (value) {},
              ),
              CustomTextFormField(
                onSave: (newValue) {
                  controller.password = newValue;
                },
                hintText: 'Password',
                validator: (value) {},
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 60,
                width: 315,
                child: ElevatedButton(
                  onPressed: () {
                    _formKey.currentState!.save();
                    if (_formKey.currentState!.validate()) {
                      controller.signUpWithEmailAndPassword();
                    }
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
              /*   Padding(
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
              ),*/
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
                        Get.to(() => LoginScreen());
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
      ),
    );
  }
}

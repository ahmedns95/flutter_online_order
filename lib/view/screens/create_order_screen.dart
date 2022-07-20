import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'login_screen.dart';

class CreateOrder extends StatelessWidget {
  const CreateOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Column(
              children: [
                const Text(
                  'Create \norder',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF525464),
                    fontFamily: "myFont",
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 70),
                Image.asset('assets/images/create_order.png'),
                const SizedBox(height: 70),
                const Text(
                  'It\'s easy, just click on the plus',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF838391),
                    fontFamily: "myFont",
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 80),
                SizedBox(
                  height: 60,
                  width: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(LoginScreen());
                      Navigator.pushNamed(context, '/login');
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(const CircleBorder()),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF20C3AF)), //Color(0xFF20C3AF),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

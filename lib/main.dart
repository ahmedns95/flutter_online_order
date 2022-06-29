import 'package:flutter/material.dart';
import 'package:flutter_online_order/screens/categories_screen.dart';
import 'package:flutter_online_order/screens/profile_screen.dart';
import 'package:flutter_online_order/screens/create_order_screen.dart';
import 'package:flutter_online_order/screens/home_screen.dart';
import 'package:flutter_online_order/screens/login_screen.dart';
import 'package:flutter_online_order/screens/second_screen.dart';
import 'package:flutter_online_order/screens/signup_screen.dart';
import 'package:flutter_online_order/screens/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
        '/order': (context) => const CreateOrder(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/categories': (context) => const CategoriesScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

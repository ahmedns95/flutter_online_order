import 'package:flutter/material.dart';
import 'package:flutter_online_order/screens/add_new_card_screen.dart';
import 'package:flutter_online_order/screens/categories_screen.dart';
import 'package:flutter_online_order/screens/construction_works_screen.dart';
import 'package:flutter_online_order/screens/customer_info_screen.dart';
import 'package:flutter_online_order/screens/nofication_screen.dart';
import 'package:flutter_online_order/screens/orders_in_progress_screen.dart';
import 'package:flutter_online_order/screens/payment_card_screen.dart';
import 'package:flutter_online_order/screens/payment_for_services_screen.dart';
import 'package:flutter_online_order/screens/profile_screen.dart';
import 'package:flutter_online_order/screens/create_order_screen.dart';
import 'package:flutter_online_order/screens/home_screen.dart';
import 'package:flutter_online_order/screens/login_screen.dart';
import 'package:flutter_online_order/screens/setting_screen.dart';
import 'package:flutter_online_order/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/order': (context) => const CreateOrder(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/categories': (context) => const CategoriesScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/notification': (context) => const NoficationScreen(),
        '/orderInPro': (context) => const OrdersInProgress(),
        '/construction': (context) => const ConstructionWorks(),
        '/payment': (context) => const PaymentForServices(),
        '/customerInfo': (context) => const CustomerInfo(),
        '/setting': (context) => const SettingScreen(),
        '/paymentsCard': (context) => const PaymentCardScreen(),
        '/addNewCard': (context) => const AddNewCardScreen(), //
      },
    );
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_order/view/screens/add_new_card_screen.dart';
import 'package:flutter_online_order/view/screens/categories_screen.dart';
import 'package:flutter_online_order/view/screens/construction_works_screen.dart';
import 'package:flutter_online_order/view/screens/customer_info_screen.dart';
import 'package:flutter_online_order/view/screens/furniture_works.dart';
import 'package:flutter_online_order/view/screens/nofication_screen.dart';
import 'package:flutter_online_order/view/screens/orders_in_progress_screen.dart';
import 'package:flutter_online_order/view/screens/payment_card_screen.dart';
import 'package:flutter_online_order/view/screens/payment_for_services_screen.dart';
import 'package:flutter_online_order/view/screens/profile_screen.dart';
import 'package:flutter_online_order/view/screens/create_order_screen.dart';
import 'package:flutter_online_order/view/screens/home_screen.dart';
import 'package:flutter_online_order/view/screens/setting_screen.dart';
import 'package:flutter_online_order/view/screens/signup_screen.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'helper/binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/order': (context) => const CreateOrder(),
        //'/login': (context) => const LoginScreen(password: '',),
        // '/signup': (context) => const SignupScreen(),
        '/categories': (context) => const CategoriesScreen(),
        '/furniture': (context) => const FurnitureWorks(),
        '/profile': (context) => const ProfileScreen(),
        '/notification': (context) => const NoficationScreen(),
        '/orderInPro': (context) => const OrdersInProgress(),
        '/construction': (context) => const ConstructionWorks(),
        '/payment': (context) => const PaymentForServices(),
        '/customerInfo': (context) => const CustomerInfo(),
        '/setting': (context) => SettingScreen(),
        '/paymentsCard': (context) => const PaymentCardScreen(),
        '/addNewCard': (context) => const AddNewCardScreen(), //
      },
    );
  }
}

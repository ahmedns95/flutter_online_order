import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_online_order/model/auth_view_model.dart';
import 'package:flutter_online_order/view/screens/categories_screen.dart';
import 'package:flutter_online_order/view/screens/login_screen.dart';
import 'package:get/get.dart';

class ControlView extends GetWidget<AuthViewModel> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return (Get.find<AuthViewModel>().user != null)
          ? const CategoriesScreen()
          : LoginScreen();
    });
  }
}

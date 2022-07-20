import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_online_order/model/user_model.dart';
import 'package:flutter_online_order/view/screens/categories_screen.dart';
import 'package:get/get.dart';

class AuthViewModel extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  late final String email, password, name;
  Rxn<User> _user = Rxn<User>();
  String? get user => _user.value?.email;

  @override
  void onInit() {
    //called whenever you use Auth controller
    // TODO: implement onInit
    super.onInit();
    _user.bindStream(_auth.authStateChanges());
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void signInWithEmailAndPassword() async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      Get.offAll(CategoriesScreen());
    } catch (e) {
      Get.snackbar('Error login account', 'e.message',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void signUpWithEmailAndPassword() async {
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((user) {
        UserModel user = UserModel(userId: user.userId, name, email, phoneNum);
      });

      Get.offAll(CategoriesScreen());
    } catch (e) {
      Get.snackbar('Error login account', 'e.message',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}

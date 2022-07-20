import 'dart:js_util/js_util_wasm.dart';

class UserModel {
  String? userId, name, email, phoneNum;

  UserModel(
    this.userId,
    this.name,
    this.email,
    this.phoneNum,
  );
  UserModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    userId = map['userId'];
    email = map['email'];
    name = map['name'];
    phoneNum = map['phoneNum'];
  }
  toJson() {
    return {
      'userId': userId,
      'email': email,
      'name': name,
      'phoneNum': phoneNum,
    };
  }
}

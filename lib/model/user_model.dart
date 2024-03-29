class UserModel {
  String? userId, name, email;

  UserModel({
    required this.userId,
    required this.name,
    required this.email,
  });
  UserModel.fromJson(Map<dynamic, dynamic> map) {
    if (map == null) {
      return;
    }
    userId = map['userId'];
    email = map['email'];
    name = map['name'];
  }
  toJson() {
    return {
      'userId': userId,
      'email': email,
      'name': name,
    };
  }
}

import 'package:shop_app/models/address.dart';

class User {
  final int userId;
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final bool rememberMe;
  final int mobile;

  User(this.userId, this.firstName, this.lastName, this.email, this.password,
      this.rememberMe, this.mobile,);
}

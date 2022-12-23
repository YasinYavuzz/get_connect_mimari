import 'package:firebase_login_example/shared/service/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //final TextEditingController _usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
//final TextEditingController _numberController = TextEditingController();

  AuthService auth = AuthService();

  loginn() {
    auth.createUser(emailController.text, passwordController.text);
  }
}

import 'package:firebase_login_example/api/api_repository.dart';
import 'package:firebase_login_example/shared/service/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  LoginController({required this.apiRepository});
  final ApiRepository apiRepository;

  //final TextEditingController _usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
//final TextEditingController _numberController = TextEditingController();

  AuthService auth = AuthService();

  loginn() {
    apiRepository.login(emailController.text, passwordController.text);
    auth.createUser(emailController.text, passwordController.text);
  }
}

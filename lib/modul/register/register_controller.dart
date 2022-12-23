

import 'package:firebase_login_example/shared/service/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  

  //final TextEditingController _usernameController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
//final TextEditingController _numberController = TextEditingController(); 

AuthService auth =AuthService();


registerr(){
  auth.createUser(emailController.text,passwordController.text);
}

}









// import 'package:get/get.dart';

// class HomeController extends GetxController{

//   String? data;

//   @override
//   void onInit() {
 
//     super.onInit();
//     data =Get.parameters["data"];
//     print("Home sayfası açıldı");
//   }
// }
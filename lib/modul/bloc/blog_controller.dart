import 'package:firebase_login_example/shared/service/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BlocController extends GetxController {
  final TextEditingController baslikController = TextEditingController();
  final TextEditingController yazarController = TextEditingController();
  final TextEditingController icerikController = TextEditingController();
  AuthService auth = AuthService();
}

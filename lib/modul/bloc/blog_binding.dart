import 'package:firebase_login_example/modul/register/register_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import 'blog_controller.dart';


class BlocBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BlocController());
  }
}

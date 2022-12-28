import 'package:firebase_login_example/modul/bloc/blog_binding.dart';
import 'package:firebase_login_example/modul/login/login_binding.dart';
import 'package:firebase_login_example/modul/login/login_screen.dart';
import 'package:firebase_login_example/modul/register/register_binding.dart';
import 'package:firebase_login_example/modul/register/register_screen.dart';
import 'package:get/get.dart';

import '../modul/bloc/blog_screen.dart';
import '../modul/home/home_binding.dart';
import '../modul/home/home_screen.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.REGISTER,
      page: () => RegisterScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.BLOG,
      page: () => BlogScreen(),
      binding: BlogBinding()
    )
  ];
}

import 'package:firebase_login_example/modul/register/register_controller.dart';
import 'package:firebase_login_example/routes/app_pages.dart';
import 'package:firebase_login_example/shared/service/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../login/login_screen.dart';

class RegisterScreen extends GetView<RegisterController> {
   RegisterScreen({super.key});

final AuthService _authService=AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 8.h, left: 2.w),
              alignment: Alignment.bottomLeft,
              child: Text("Create Account",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.h),
              child: Icon(
                Icons.person_add_alt_sharp,
                size: 40.sp,
                color: Colors.white,
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 2.w, left: 2.w, top: 2.h),
                child: TextField(
                 // controller: _usernameController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(),
                      hintText: "Username",
                      hintStyle: TextStyle(color: Colors.white)),
                )),
            Container(
                margin: EdgeInsets.only(right: 2.w, left: 2.w, top: 2.h),
                child: TextField(
                  controller: controller.emailController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(),
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.white)),
                )),
            Container(
                margin: EdgeInsets.only(right: 2.w, left: 2.w, top: 2.h),
                child: TextField(

                  controller: controller.passwordController,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.white)),
                )),
            Container(
                margin: EdgeInsets.only(right: 2.w, left: 2.w, top: 2.h),
                child: TextField(
                  //controller: _numberController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.local_phone_outlined,
                        color: Colors.white,
                      ),
                      border: OutlineInputBorder(),
                      hintText: "Contact Number",
                      hintStyle: TextStyle(color: Colors.white)),
                )),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(top: 2.h),
                alignment: Alignment.center,
                height: 5.h,
                width: 30.w,
                decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(17.sp)),
                child: Text(
                  "Sign up",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              onTap: () {
               controller.registerr();
              },
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(top: 15.h),
                alignment: Alignment.center,
                height: 5.h,
                width: 20.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.sp)),
                child: Text(
                  "Log in",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              onTap: () {
                Get.toNamed(Routes.LOGIN);
              },
            ),
          ],
        ),
      ),
    );
    ;
  }
}

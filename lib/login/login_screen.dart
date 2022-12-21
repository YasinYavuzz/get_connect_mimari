import 'package:firebase_login_example/register/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              child: Text("Welcome Back !",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color:Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(left: 2.w, top: 0.5.h),
              alignment: Alignment.bottomLeft,
              child: Text("Enter your Username & Password",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(color: Colors.white)),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.h),
              child: Icon(
                Icons.person_pin,
                size: 48.sp,
                color: Colors.white,
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 2.w, left: 2.w, top: 2.h),
                child: TextField(
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
              margin: EdgeInsets.only(top: 2.h),
              alignment: Alignment.center,
              height: 5.h,
              width: 30.w,
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20.sp)),
              child: Text(
                "Log in",
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(top: 25.h),
                alignment: Alignment.center,
                height: 5.h,
                width: 20.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.sp)),
                child: Text(
                  "Sing Up",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}

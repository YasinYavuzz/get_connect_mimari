import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../login/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
              child: Text("Create Account :)",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                      color: Colors.teal.shade300,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.h),
              child: Icon(
                Icons.person_add_alt_sharp,
                size: 40.sp,
                color: Colors.purple.shade100,
              ),
            ),
            Container(
                margin: EdgeInsets.only(right: 2.w, left: 2.w, top: 2.h),
                child: TextField(
                  style: TextStyle(color: Colors.teal.shade600),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: Colors.purple.shade100,
                      ),
                      border: OutlineInputBorder(),
                      hintText: "Username",
                      hintStyle: TextStyle(color: Colors.purple.shade300)),
                )),
            Container(
                margin: EdgeInsets.only(right: 2.w, left: 2.w, top: 2.h),
                child: TextField(
                  style: TextStyle(color: Colors.teal.shade600),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Colors.purple.shade100,
                      ),
                      border: OutlineInputBorder(),
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.purple.shade300)),
                )),
            Container(
                margin: EdgeInsets.only(right: 2.w, left: 2.w, top: 2.h),
                child: TextField(
                  style: TextStyle(color: Colors.teal.shade600),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.purple.shade100,
                      ),
                      border: OutlineInputBorder(),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.purple.shade300)),
                )),
            Container(
                margin: EdgeInsets.only(right: 2.w, left: 2.w, top: 2.h),
                child: TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  style: TextStyle(color: Colors.teal.shade600),
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.local_phone_outlined,
                        color: Colors.purple.shade100,
                      ),
                      border: OutlineInputBorder(),
                      hintText: "Contact Number",
                      hintStyle: TextStyle(color: Colors.purple.shade300)),
                )),
            Container(
              margin: EdgeInsets.only(top: 2.h),
              alignment: Alignment.center,
              height: 5.h,
              width: 30.w,
              decoration: BoxDecoration(
                  color: Colors.purple.shade300,
                  borderRadius: BorderRadius.circular(17.sp)),
              child: Text(
                "Sing up",
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(top: 15.h),
                alignment: Alignment.center,
                height: 5.h,
                width: 25.w,
                decoration: BoxDecoration(
                    color: Colors.teal.shade100,
                    borderRadius: BorderRadius.circular(20.sp)),
                child: Text(
                  "Log in",
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
    ;
  }
}

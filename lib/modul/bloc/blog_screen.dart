import 'package:firebase_login_example/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BlocScreen extends StatelessWidget {
  const BlocScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Post A Question",
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 2.h, right: 2.w, left: 2.w),
                child: TextFormField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Topic",
                ))),
            Container(
                margin: EdgeInsets.only(top: 2.h, right: 2.w, left: 2.w, bottom: 2.h),
                child: TextFormField(
                  maxLines: 16,
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Content",
                ))),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(left: 70.w),
                alignment: Alignment.center,
                height: 5.h,
                width: 20.w,
                decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(15.sp)),
                child: Text("POST", style: Theme.of(context).textTheme.bodyText2,),
              ),
              onTap: () {
                Get.toNamed(Routes.HOME
                        );            },
            ),
          ],
        ),
      ),
    );
  }
}

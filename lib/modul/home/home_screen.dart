import 'package:firebase_login_example/modul/bloc/blog_binding.dart';
import 'package:firebase_login_example/modul/bloc/blog_screen.dart';
import 'package:firebase_login_example/modul/home/home_controller.dart';
import 'package:firebase_login_example/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          controller.liste.length.toString(),
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      body: Obx(() => controller.loadingStatus.value.isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Container(
              child: Text(controller.data['title']),
            )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Get.toNamed(Routes.BLOG);
          //  Get.to(BlogScreen(),binding: BlogBinding());
          //  Get.to(BlogScreen());
        },
      ),
    );
  }
}

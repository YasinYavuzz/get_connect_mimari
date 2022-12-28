import 'package:firebase_login_example/modul/bloc/blog_binding.dart';
import 'package:firebase_login_example/modul/bloc/blog_screen.dart';
import 'package:firebase_login_example/modul/home/home_controller.dart';
import 'package:firebase_login_example/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends GetView<HomeController>{
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
      body: Container(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          //physics: NeverScrollableScrollPhysics(),
          itemCount: controller.liste.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(top: 1.h, right: 2.w, left: 2.w),
              padding: EdgeInsets.all(2.h),
              height: 23.h,
              width: 100.w,
              decoration: BoxDecoration(
                  border: Border.all(width: 0.3.w, color: Colors.teal)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                          height: 10.h,
                          width: 10.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.h),
                              border: Border.all(
                                  width: 0.3.w, color: Colors.red.shade800),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://i.pinimg.com/550x/79/42/24/794224be7ac8235184c1f69c66554075.jpg"))
                                      )
                                      ),
                      Container(
                        padding: EdgeInsets.only(left: 2.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(controller.liste[index]["title"]),
                            Text(controller.liste[index]["content"]),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    child: Container(
                        margin: EdgeInsets.only(top: 2.h),
                        child: Text(
                          "İçerik " * 100,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        )),
                  )
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: const Icon(Icons.add,color: Colors.white,),
        onPressed: () {
          Get.toNamed(Routes.BLOG);
   //  Get.to(BlogScreen(),binding: BlogBinding());
    //  Get.to(BlogScreen());
      },
      ),
    );
  }
}

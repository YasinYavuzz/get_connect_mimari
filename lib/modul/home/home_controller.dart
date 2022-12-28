import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_login_example/analytics/analytics_service.dart';
import 'package:firebase_login_example/shared/service/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
 // AnalyticsService analyticsService= Get.find();
  AuthService auth = AuthService();
    List<dynamic> liste = [];


 getData() async {

    FirebaseFirestore.instance.collection("blog").snapshots().listen((event) {
      for (var element in event.docs) {
        liste.add(element);
        update();
      }
      print("aaaaaaaaaaaaaa ${liste}");
    });
    update();
  }


@override
  void onInit() {
  getData();
    super.onInit();
  }
}
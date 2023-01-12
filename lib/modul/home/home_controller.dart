import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_login_example/analytics/analytics_service.dart';
import 'package:firebase_login_example/api/api_repository.dart';
import 'package:firebase_login_example/shared/service/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // AnalyticsService analyticsService= Get.find();
  final ApiRepository apiRepository;
  AuthService auth = AuthService();
  List<dynamic> liste = [];

  final data = {}.obs;

  Rx<RxStatus> loadingStatus = RxStatus.empty().obs;

  HomeController({required this.apiRepository});

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
  Future<void> onInit() async {
    //getData();
    loadingStatus.value = RxStatus.loading();
    data.value = await apiRepository.login("email", "password");
    loadingStatus.value = RxStatus.success();
    print(data);
    super.onInit();
  }
}

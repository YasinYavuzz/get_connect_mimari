import 'package:firebase_login_example/shared/service/auth_service.dart';
import 'package:firebase_login_example/shared/service/firestore_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../routes/routes.dart';

class BlogController extends GetxController {
  final TextEditingController baslikController = TextEditingController();
  final TextEditingController icerikController = TextEditingController();
  AuthService auth = AuthService();



@override
  void onInit() {
   
    super.onInit();
  }
  FireStoreService fireStoreService=Get.find();

  

firestoreadd(){
 return  fireStoreService.firestoreAdd(baslikController.text, icerikController.text);
   
}
  
}

import 'package:firebase_login_example/shared/service/firebase_service.dart';
import 'package:firebase_login_example/shared/service/firestore_service.dart';
import 'package:get/get.dart';

import 'shared/service/auth_service.dart';

class DenpendencyInjection {
  static init() async {
    await Get.putAsync(() => FirebaseService().init());
    await Get.putAsync(() => AuthService().init());
    await Get.putAsync(() => FireStoreService().init());
  }
}
import 'package:firebase_login_example/api/api_provider.dart';
import 'package:firebase_login_example/api/api_repository.dart';
import 'package:get/get.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiProvider(), permanent: true);
    Get.put(ApiRepository(apiProvider: Get.find()), permanent: true);
  }
}

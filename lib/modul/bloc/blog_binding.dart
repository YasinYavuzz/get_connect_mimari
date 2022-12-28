

import 'package:get/get.dart';

import 'blog_controller.dart';

class BlogBinding extends Bindings {
  @override
  Future<void> dependencies() async {
    Get.lazyPut(() => BlogController());
  }
}

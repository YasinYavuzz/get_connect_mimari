import 'package:firebase_login_example/api/base_provider.dart';
import 'package:get/get_connect.dart';

class ApiProvider extends BaseProvider {
  Future<Response> urlPost(String path, Object data) {
    return post(path, data);
  }

  Future<Response> urlGet(String path) {
    return get(
      path,
    );
  }
}

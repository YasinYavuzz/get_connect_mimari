import 'package:firebase_login_example/api/api_provider.dart';

class ApiRepository {
  ApiRepository({required this.apiProvider});
  final ApiProvider apiProvider;

  Future<dynamic> login(String email, String password) async {
    final res = await apiProvider.urlGet('/products/1');
    if (res.statusCode == 200) {
      return res.body;
    }
  }
}

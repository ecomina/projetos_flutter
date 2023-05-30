import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ApiService {
  final _storage = FlutterSecureStorage();

  Future<String?> getToken() async {
    return await _storage.read(key: 'token');
  }

  Future<void> setToken(String token) async {
    await _storage.write(key: 'token', value: token);
  }

  Future<void> login() async {
    var url = 'https://jsonplaceholder.typicode.com/todos/1';

    var httpsUri = Uri(
        scheme: 'https',
        host: 'jsonplaceholder.typicode.com',
        path: '/todos/1',
        fragment: 'numbers');

    var response = await http.get(httpsUri);
    setToken(response.body);
    var tk = await getToken();
    print(tk);
  }
}

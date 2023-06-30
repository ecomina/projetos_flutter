import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  final storage = const FlutterSecureStorage();

  Future<String?> getToken() async {
    return await storage.read(key: 'token');
  }

  Future<void> setToken(String token) async {
    await storage.write(key: 'token', value: token);
  }

  Future<String> login(String name, String password) async {
    try {
      http.Response response = await _login(name, password);

      Map<String, dynamic> jsonData = json.decode(response.body);

      if (response.statusCode == 200) {
        String token = jsonData['token'];
        await setToken(token);

        String? tk = await getToken();

        log('Token: $tk');
        return '';
      } else {
        String msg = jsonData['message'];
        log('Token: $msg');
        return msg;
      }
    } catch (e) {
      return 'Erro inesperado';
    }
  }

  Future<http.Response> _login(String name, String password) async {
    return http
        .post(
      Uri.parse('http://192.168.20.119:5022/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{'name': name, 'password': password}),
    )
        .then((response) async {
      //Map<String, dynamic> jsonData = json.decode(response.body);

      return response;
    });
  }
}

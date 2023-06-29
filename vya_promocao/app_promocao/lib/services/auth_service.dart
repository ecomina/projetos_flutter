import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthService {
  final storege = const FlutterSecureStorage();

  Future<String?> getToken() async {
    return await storege.read(key: 'token');
  }

  Future<void> setToken(String token) async {
    await storege.write(key: 'token', value: token);
  }

  Future<http.Response> login(String name, String password) async {
    return http
        .post(
      Uri.parse('http://192.168.20.119:5022/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{'name': name, 'password': password}),
    )
        .then((response) {
      log(response.body);
      return response;
    });
  }
}

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 60.0,
          left: 40.0,
          right: 40.0,
          bottom: 0.0,
        ),
        color: Colors.blueAccent,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset("images/logo_magalu.png"),
            ),
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.red,
              ),
            ),
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}

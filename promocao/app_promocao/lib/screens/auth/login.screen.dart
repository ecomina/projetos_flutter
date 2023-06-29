import 'dart:developer';

import 'package:app_promocao/widgets/ecom_textfield.dart';
import 'package:flutter/material.dart';

import '../../services/api_service.dart';
import '../../widgets/ecom_image.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  //text editing controllers

  final _servico = ApiService();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  onTapLogin() async {
    log('Cliquei userOnTap!');
    //GoRouter.of(context).push('/home');
    await _servico.login(usernameController.text, passwordController.text);
  }

  void userOnPressed() {
    log('Cliquei userOnPressed!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 50),
              //Bem vindo
              const Text(
                'Bem vindo VYA Promocional',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              //email textfield
              EcomTextField(
                controller: usernameController,
                hintText: 'Nome do Usuário',
                obscureText: false,
              ),
              const SizedBox(height: 30),
              // password textfield
              EcomTextField(
                controller: passwordController,
                hintText: 'Senha',
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(
                    'Esqueceu a senha?',
                    style: TextStyle(color: Colors.grey),
                  ),
                ]),
              ),
              const SizedBox(
                height: 10,
              ),
              // EcomButton(onTap: onTapLogin()),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () {}, //userOnPressed(),
                child: const Text('Meu Botão'),
              ),
              const SizedBox(
                height: 50,
              ),
              //registrar-see
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1.5,
                        color: Colors.red,
                      ),
                    ),
                    Text('Não é cadastrado?'),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const EcomImage(imagePath: 'assets/images/vyaonline22-mini.png'),
            ],
          ),
        ),
      ),
    );
  }
}

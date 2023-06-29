import 'dart:developer';

import 'package:app_promocao/services/auth_service.dart';
import 'package:app_promocao/widgets/ecom_button.dart';
import 'package:app_promocao/widgets/ecom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //LoginScreen({super.key});

  final authServico = AuthService();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  Future onTapLogin(BuildContext context) async {
    log('Cliquei userOnTap!');
    GoRouter.of(context).push('/promocao');
    //await authServico.login(usernameController.text, passwordController.text);
  }

  @override
  void initState() {
    super.initState();
    log('InitState');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromARGB(255, 38, 37, 39), Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 45),
              const Center(
                child: Text(
                  'Bem vindo ao VYA!',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              EcomTextField(
                controller: usernameController,
                hintText: 'Nome do Usuário',
                obscureText: false,
              ),
              const SizedBox(height: 25),
              EcomTextField(
                controller: passwordController,
                hintText: 'Senha',
                obscureText: true,
              ),
              const SizedBox(height: 25),
              EcomButton(onTap: () {
                //GoRouter.of(context).push('/promocao');
                onTapLogin(context);
              })
            ],
          ),
        ),
      ),
    );
  }
}
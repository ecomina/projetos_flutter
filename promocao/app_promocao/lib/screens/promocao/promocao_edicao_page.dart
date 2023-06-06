import 'package:flutter/material.dart';

class PromocoesEdicaoPage extends StatelessWidget {
  const PromocoesEdicaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Homepage'),
      ),
      body: const Center(
        child: Text(
          'Bem-vindo à minha homepage!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

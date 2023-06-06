import 'package:flutter/material.dart';

class PromocaoListaPage extends StatelessWidget {
  const PromocaoListaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Promoções'),
      ),
      body: const Center(
        child: Text(
          'Bem-vindo à minha Promoções!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

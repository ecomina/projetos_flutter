import 'package:flutter/material.dart';

class PromocaoConfiguracaoScreen extends StatefulWidget {
  const PromocaoConfiguracaoScreen({super.key});

  @override
  State<PromocaoConfiguracaoScreen> createState() =>
      _PromocaoConfiguracaoScreenState();
}

class _PromocaoConfiguracaoScreenState
    extends State<PromocaoConfiguracaoScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Configuração Screen'),
    );
  }
}

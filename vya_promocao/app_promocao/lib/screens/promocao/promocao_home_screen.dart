import 'package:flutter/material.dart';

class PromocaoHomeScreen extends StatefulWidget {
  const PromocaoHomeScreen({super.key});

  @override
  State<PromocaoHomeScreen> createState() => _PromocaoHomeScreenState();
}

class _PromocaoHomeScreenState extends State<PromocaoHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Promoção Home'));
  }
}

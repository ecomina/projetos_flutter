import 'package:flutter/material.dart';

class PromocaoHomeScreen extends StatefulWidget {
  const PromocaoHomeScreen({super.key});

  @override
  State<PromocaoHomeScreen> createState() => _PromocaoHomeScreenState();
}

class _PromocaoHomeScreenState extends State<PromocaoHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        width: 250,
        height: 250,
        child: Image.asset('assets/images/vyaonline22-mini.png'),
      ),
    ));
  }
}

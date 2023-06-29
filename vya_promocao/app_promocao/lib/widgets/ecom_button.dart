import 'package:flutter/material.dart';

class EcomButton extends StatelessWidget {
  final Function()? onTap;
  // final String txtCaption;

  const EcomButton(
      {super.key, required this.onTap /*, required this.txtCaption*/});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
            child: Text(
          'Entrar',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        )),
      ),
    );
  }
}

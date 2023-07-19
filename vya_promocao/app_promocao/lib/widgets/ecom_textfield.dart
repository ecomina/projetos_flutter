import "package:flutter/material.dart";

class EcomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const EcomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  String label() {
    return hintText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlue),
            ),
            fillColor: const Color.fromARGB(255, 47, 50, 53),
            filled: true,
            hintText: hintText,
            labelText: label(),
            labelStyle: const TextStyle(fontStyle: FontStyle.italic),
            border: const UnderlineInputBorder()),
      ),
    );
  }
}

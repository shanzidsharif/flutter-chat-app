import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  const MyTextField
  ({super.key, 
  required this.controller, 
  required this.hintText, 
  required this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green.shade200)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey.shade100),
        ), 
        fillColor: Colors.grey.shade50,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 20, color: Colors.orange.shade300),
      ),
    );
  }
}
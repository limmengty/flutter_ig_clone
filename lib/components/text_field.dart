import 'package:flutter/material.dart';

class ReuseTextField extends StatelessWidget {
  final dynamic controller;
  final String hintText;
  final bool obscureText;
  const ReuseTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.grey.shade400,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.black),
          ),
          fillColor: Colors.grey[100],
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey[800],
          ),
        ),
      ),
    );
  }
}

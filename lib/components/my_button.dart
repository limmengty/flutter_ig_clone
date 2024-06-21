import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function() onTap;
  final String bText;
  final Color colorBox;
  final Color colorBorder;
  final Color colorText;
  const MyButton(
      {super.key,
      required this.onTap,
      required this.bText,
      required this.colorBox,
      required this.colorBorder,
      required this.colorText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: colorBox,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: colorBorder)),
        child: Center(
          child: Text(
            bText,
            style: TextStyle(
              color: colorText,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AccountTab2 extends StatelessWidget {
  const AccountTab2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              "Share a moment with the world",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          Text(
            "Create your first Reel",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          )
        ],
      ),
    );
  }
}

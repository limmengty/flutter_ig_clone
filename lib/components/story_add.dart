import 'package:flutter/material.dart';

class StoryAdd extends StatelessWidget {
  const StoryAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.white,
      radius: 12,
      child: Padding(
        padding: EdgeInsets.all(3), // Adjust padding as needed
        child: CircleAvatar(
          backgroundColor: Colors.blue,
          radius: 15,
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 15,
          ),
        ),
      ),
    );
  }
}

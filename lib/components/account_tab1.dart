import 'package:flutter/material.dart';

class AccountTab1 extends StatelessWidget {
  const AccountTab1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.camera_alt_outlined,
                    size: 50,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                  "No posts yet",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

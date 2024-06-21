import 'package:flutter/material.dart';
import 'package:flutter_clone_ig/insta_app/homepage.dart';

class InstagramApp extends StatelessWidget {
  const InstagramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
      theme: ThemeData(
        iconTheme:const IconThemeData(
          color: Color.fromRGBO(40, 40, 40, 1),
        ),
        appBarTheme:const AppBarTheme(
          elevation: 0,
          color: Colors.white,
          iconTheme: IconThemeData(
            color: Color.fromRGBO(40, 40, 40, 1),
          ),
        ),
      ),
    );
  }
}

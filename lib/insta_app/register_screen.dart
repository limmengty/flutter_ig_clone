import 'package:flutter/material.dart';
import 'package:flutter_clone_ig/components/my_button.dart';
import 'package:flutter_clone_ig/components/text_field.dart';
import 'package:flutter_clone_ig/insta_app/insta_app.dart';
import 'package:flutter_clone_ig/insta_app/login_screen.dart';
import 'package:flutter_svg/svg.dart';

class RegisterScreen extends StatelessWidget {
  // const RegisterScreen({super.key});
  final TextEditingController userNameContoller = TextEditingController();
  final TextEditingController passwordContoller = TextEditingController();
  final TextEditingController comformPasswordContoller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 180,
                    child: SvgPicture.network(
                      'https://www.svgrepo.com/show/303154/instagram-2016-logo.svg',
                      height: 60,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
                MyButton(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => InstagramApp(),
                      ),
                    );
                  },
                  bText: "Login with facebook",
                  colorBox: Colors.blue,
                  colorBorder: Colors.transparent,
                  colorText: Colors.white),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 150,
                    color: Colors.grey.shade700,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'OR',
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                  ),
                  Container(
                    height: 1,
                    width: 150,
                    color: Colors.grey.shade700,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ReuseTextField(
                controller: userNameContoller,
                hintText: 'Username or Email',
                obscureText: false,
              ),
              const SizedBox(
                height: 15,
              ),
              ReuseTextField(
                controller: passwordContoller,
                hintText: 'Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 15,
              ),
              ReuseTextField(
                controller: comformPasswordContoller,
                hintText: 'Comfrom Password',
                obscureText: true,
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => InstagramApp(),
                    ),
                  );
                },
                child: Container(
                  width: 327,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                      child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "By signing up, you agree to our Terms and Policy",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 250,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Have an account ? ",
                    style: TextStyle(color: Colors.blue),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    },
                    child: const Text(
                      " Log in",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

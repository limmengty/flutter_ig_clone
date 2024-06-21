import 'package:flutter/material.dart';
import 'package:flutter_clone_ig/components/my_button.dart';
import 'package:flutter_clone_ig/components/text_field.dart';
import 'package:flutter_clone_ig/insta_app/insta_app.dart';
import 'package:flutter_clone_ig/insta_app/register_screen.dart';
// import 'package:flutter_clone_ig/pages/home.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  // const LoginScreen({super.key});
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                SvgPicture.network(
                  'https://www.svgrepo.com/show/303154/instagram-2016-logo.svg',
                  height: 60,
                ),

                const SizedBox(height: 100),

                const SizedBox(height: 25),

                // email textfield
                ReuseTextField(
                  controller: userNameController,
                  hintText: 'Phone number, email or username',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                ReuseTextField(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),

                const SizedBox(height: 10),
                // Login
                MyButton(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const InstagramApp(),
                      ),
                    );
                  },
                  bText: 'Login',
                  colorBox: Colors.blue,
                  colorBorder: Colors.transparent,
                  colorText: Colors.white,
                ),

                const SizedBox(
                  height: 20,
                ),

                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(fontSize: 18, color: Colors.grey[900]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 200),

                // Create new account
                MyButton(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => RegisterScreen(),
                      ),
                    );
                  },
                  bText: 'Create new account',
                  colorBox: Colors.transparent,
                  colorBorder: Colors.blue,
                  colorText: Colors.blue,
                ),

                // forgot password?
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.network(
                        'https://www.svgrepo.com/show/424916/meta-logo-facebook.svg',
                        height: 30,
                        color: Colors.grey[500],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Meta',
                        style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


// return Scaffold(
    //   backgroundColor: Colors.white,
    //   body: Column(
    //     children: [
    //       const Expanded(
    //         flex: 2,
    //         child: Center(
    //           child: Text(
    //             '',
    //             style: TextStyle(color: Colors.black),
    //           ),
    //         ),
    //       ),
    //       SingleChildScrollView(
    //         child: Column(
    //           children: [
    //             const SizedBox(
    //                 height: 60,
    //                 width: 180,
    //                 child: Image(
    //                   image: AssetImage('assets/img/logo.png'),
    //                 )),
    //             const SizedBox(
    //               height: 100,
    //             ),
    //             ReuseTextField(
    //               controller: userNameController,
    //               hintText: 'Phone number, email or username',
    //               obscureText: false,
    //             ),
    //             const SizedBox(
    //               height: 15,
    //             ),
    //             ReuseTextField(
    //               controller: passwordController,
    //               hintText: "Password",
    //               obscureText: true,
    //             ),
    //             const SizedBox(
    //               height: 15,
    //             ),
    //             InkWell(
    //               onTap: () {
    //                 Navigator.of(context).push(
    //                   MaterialPageRoute(
    //                     builder: (context) => const InstagramApp(),
    //                   ),
    //                 );
    //               },
    //               child: Container(
    //                 width: 327,
    //                 height: 50,
    //                 decoration: BoxDecoration(
    //                   color: Colors.blue,
    //                   borderRadius: BorderRadius.circular(15),
    //                 ),
    //                 child: const Center(
    //                   child: Text(
    //                     'Login',
    //                     style: TextStyle(
    //                         color: Colors.white, fontWeight: FontWeight.bold),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //             const SizedBox(
    //               height: 10,
    //             ),
    //             const Row(
    //               mainAxisAlignment: MainAxisAlignment.center,
    //               children: [
    //                 Text(
    //                   "Forgot password? ",
    //                   style: TextStyle(color: Colors.black),
    //                 ),
    //               ],
    //             )
    //           ],
    //         ),
    //       ),
    //       const Expanded(
    //         flex: 2,
    //         child: Center(
    //           child: Text(
    //             '',
    //             style: TextStyle(color: Colors.black),
    //           ),
    //         ),
    //       ),
    //       Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           MyButton(
    //             onTap: () {
    //               Navigator.of(context).push(
    //                 MaterialPageRoute(
    //                   builder: (context) => RegisterScreen(),
    //                 ),
    //               );
    //             },
    //             bText: "Create new account",
    //             colorBox: Colors.transparent,
    //             colorBorder: Colors.blue,
    //             colorText: Colors.blue,
    //           ),

    //           Image.network(''),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
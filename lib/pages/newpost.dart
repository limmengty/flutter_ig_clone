import 'package:flutter/material.dart';
import 'package:flutter_clone_ig/data/all_link_image.dart';
import 'package:flutter_clone_ig/insta_app/insta_app.dart';
import 'package:flutter_svg/svg.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: NewPostPage(),
    );
  }
}

class NewPostPage extends StatelessWidget {
  const NewPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    AllImageLink all = AllImageLink();
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          // height: double.infinity,
          width: double.infinity,
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const InstagramApp(),
                            ),
                          );
                        },
                        child: SizedBox(
                          child: SvgPicture.network(
                            'https://www.svgrepo.com/show/438433/delete.svg',
                            color: Colors.white,
                            width: 30,
                          ),
                        ),
                      ),
                      const SizedBox(
                        child: Text(
                          "New Post",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        child: Text(
                          "Next",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // image
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: SizedBox(
                  width: double.infinity,
                  height: 400,
                  child: SizedBox(
                    child: Image.network(
                      'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/BB1hNhLY.img?w=768&h=432&m=6&x=410&y=142&s=156&d=156',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10, left: 13, right: 13),
                child: SizedBox(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                width: 65,
                                child: Text(
                                  "Recents",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 5),
                                child: SvgPicture.network(
                                  'https://www.svgrepo.com/show/346523/arrow-drop-down.svg',
                                  color: Colors.white,
                                  fit: BoxFit.cover,
                                  width: 35,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(255, 44, 43, 43),
                                  radius: 20,
                                  child: Image.network(
                                    'https://cdn4.iconfinder.com/data/icons/photo-editing-8/48/19_Foreground_And_Background_Background_Foreground_-512.png',
                                    width: 16,
                                    height: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor:
                                      Color.fromARGB(255, 44, 43, 43),
                                  radius: 20,
                                  child: Image.network(
                                    'https://cdn-icons-png.flaticon.com/512/2951/2951086.png',
                                    width: 20,
                                    height: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: GridView.builder(
                          itemCount: all.postImage.length,
                          scrollDirection: Axis.vertical,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(1),
                              child: Image.network(
                                all.postImage[index],
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_clone_ig/components/account_tab1.dart';
import 'package:flutter_clone_ig/components/account_tab2.dart';
import 'package:flutter_clone_ig/components/account_tab3.dart';
import 'package:flutter_clone_ig/components/story.dart';
import 'package:flutter_clone_ig/data/all_link_image.dart';
import 'package:flutter_clone_ig/data/text.dart';
import 'package:flutter_clone_ig/insta_app/login_screen.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
  const ProfilePage({super.key});
}

class _ProfilePageState extends State<ProfilePage> {
  final AllImageLink all = AllImageLink();
  final Texts texts = Texts();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(
            "dlwlrma",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_box_outlined),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.menu),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Story(all: all, index: -1, border: true, add: true),

                  //number of posts, follower, following
                  const Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "0",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text("Posts"),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "32M",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text("Follower"),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "120",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text("Following"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // name and bio
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "dlwlrma",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.0),
                        child: Text(
                          "Idc",
                        ),
                      ),
                      Text(
                        "youtu.be/JleoAppaxi0?si=OxRI3ihI-1Hq7n...",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 163,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Center(
                            child: Text(
                          "Edit profile",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 163,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Center(
                          child: Text(
                            "Share profile",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Center(
                            child: Icon(Icons.person_add_outlined)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Theme(
              data: ThemeData().copyWith(dividerColor: Colors.transparent),
              child: ExpansionTile(
                // iconColor: Colors.black,
                initiallyExpanded: false,
                title: const Text(
                  "Story highlights",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                children: [
                  const ListTile(
                    leading: Text(
                      "Keep your favorite stories on your profile",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        5,
                        (index) => Container(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 37,
                                backgroundImage: const NetworkImage(
                                    "https://i.pinimg.com/736x/d0/6e/8a/d06e8a670837e4e0fb7e7340eedde36d.jpg"),
                                child: CircleAvatar(
                                  radius: 32,
                                  backgroundImage:
                                      NetworkImage(all.stories[index]),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                texts.storyCaptions[index],
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TabBar(
              indicatorColor: Colors.black,
              labelColor: Colors.black,
              tabs: [
                const Tab(
                  icon: Icon(Icons.grid_on_outlined),
                ),
                Tab(
                  icon: Image.network(
                    "https://zeevector.com/wp-content/uploads/Instagram-Reels-Logo-PNG-Black.png",
                    width: 22,
                    height: 22,
                  ),
                ),
                Tab(
                  icon: Image.network(
                    "https://cdn.iconscout.com/icon/premium/png-256-thumb/tag-5229329-4370429.png",
                    width: 22,
                    height: 22,
                  ),
                ),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [AccountTab1(), AccountTab2(), AccountTab3()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

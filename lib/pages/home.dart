import 'package:flutter/material.dart';
import 'package:flutter_clone_ig/components/post_view.dart';
import 'package:flutter_clone_ig/components/story_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
  const HomePage({super.key});
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  Future<void> onrefresh() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        //title: Text("Instagram",style: TextStyle(color: Colors.black),),
        title: Image.network(
            "https://www.dafont.com/forum/attach/orig/7/3/737566.png?1",
            height: 33),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(FontAwesomeIcons.facebookMessenger),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onrefresh,
        child: const SingleChildScrollView(
          child: Column(
            children: [
              //story
              StoryView(),
              Divider(),
              // post view
              PostView()
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_clone_ig/data/all_link_image.dart';
import 'package:flutter_clone_ig/reals/page1.dart';
import 'package:flutter_clone_ig/reals/page2.dart';
import 'package:flutter_clone_ig/reals/page3.dart';
import 'package:flutter_clone_ig/reals/page4.dart';
import 'package:flutter_clone_ig/reals/page5.dart';
import 'package:flutter_clone_ig/reals/page6.dart';
import 'package:flutter_clone_ig/reals/page7.dart';
import 'package:flutter_svg/svg.dart';

class MyReelPage extends StatelessWidget {
  MyReelPage({super.key});
  final AllImageLink all = AllImageLink();
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: SizedBox(
          width: 85,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 50,
                child: Text(
                  "Reels",
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
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.photo_camera_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          VideoPage1(),
          VideoPage2(),
          VideoPage3(),
          VideoPage4(),
          VideoPage5(),
          VideoPage6(),
          VideoPage7(),
          VideoPage1(),
          VideoPage2(),
          VideoPage3(),
          VideoPage4(),
          VideoPage5(),
          VideoPage6(),
          VideoPage7(),
        ],
      ),
    );
  }
}

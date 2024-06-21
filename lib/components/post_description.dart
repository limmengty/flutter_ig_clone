import 'package:flutter/material.dart';
import 'package:flutter_clone_ig/data/all_link_image.dart';
import 'package:flutter_clone_ig/data/text.dart';

// ignore: must_be_immutable
// @immutable
// ignore: must_be_immutable
class PostDescription extends StatelessWidget {
  AllImageLink all = AllImageLink();
  Texts texts = Texts();
  int index;
  PostDescription({super.key, required this.all, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(text: "Liked by"),
                TextSpan(
                    text: " ry_an ",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: " and"),
                TextSpan(
                    text: " others",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              style: const TextStyle(color: Colors.black),
              children: [
                TextSpan(
                    text: texts.profileName[index],
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(
                  text: " " + texts.captions[index],
                ),
              ],
            ),
          ),
          const Text(
            "View all 12 comments",
            style: TextStyle(color: Colors.black38),
          )
        ],
      ),
    );
  }
}

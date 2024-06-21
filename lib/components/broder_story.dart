import 'package:flutter/material.dart';
import 'package:flutter_clone_ig/data/all_link_image.dart';

// ignore: must_be_immutable
class BorderStory extends StatelessWidget {
  AllImageLink all = AllImageLink();
  final int index;
  BorderStory({super.key, required this.all, required this.index});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 37,
      backgroundImage: const NetworkImage(
          "https://i.pinimg.com/736x/d0/6e/8a/d06e8a670837e4e0fb7e7340eedde36d.jpg"),
      child: CircleAvatar(
        radius: 32,
        backgroundImage: NetworkImage(all.profileImages[index]),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_clone_ig/data/all_link_image.dart';
import 'package:flutter_clone_ig/data/text.dart';

// ignore: must_be_immutable
class PostProfile extends StatelessWidget {
  AllImageLink all = AllImageLink();
  Texts texts = Texts();
  final int index;
  PostProfile({super.key, required this.all, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            radius: 22,
            backgroundImage: const NetworkImage(
                "https://i.pinimg.com/736x/d0/6e/8a/d06e8a670837e4e0fb7e7340eedde36d.jpg"),
            child: CircleAvatar(
              radius: 18,
              backgroundImage: NetworkImage(all.profileImages[index]),
            ),
          ),
        ),
        Text(
          texts.profileName[index],
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
      ],
    );
  }
}

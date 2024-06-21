import 'package:flutter/material.dart';

class PostIcons extends StatelessWidget {
  const PostIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.network(
            "https://cdn0.iconfinder.com/data/icons/social-media-logo-4/32/Social_Media_instagram_comment-512.png",
            width: 30,
            height: 30,
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Image.network(
              "https://static.thenounproject.com/png/3861743-200.png",
              width: 25,
              height: 25,
            )),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.bookmark_border_outlined),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_clone_ig/components/post_description.dart';
import 'package:flutter_clone_ig/components/post_icons.dart';
import 'package:flutter_clone_ig/components/post_profile.dart';
import 'package:flutter_clone_ig/data/all_link_image.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) {
      final AllImageLink all = AllImageLink();

    return Column(
      children: List.generate(
        8,
        (index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //post profile
            PostProfile(all: all, index: index +1,),
            //Image Post
            Image.network(all.posts[index]),
            // post icons
            const PostIcons(),
            // post Description
            PostDescription(all: all, index: index,)
          ],
        ),
      ),
    );
  }
}

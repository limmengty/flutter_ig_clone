import 'package:flutter/material.dart';
import 'package:flutter_clone_ig/components/broder_story.dart';
import 'package:flutter_clone_ig/components/story_add.dart';
import 'package:flutter_clone_ig/data/all_link_image.dart';

// ignore: must_be_immutable
class Story extends StatelessWidget {
  AllImageLink all = AllImageLink();
  final int index;
  bool border = true;
  bool add = true;
  Story(
      {super.key,
      required this.all,
      required this.index,
      required this.border,
      required this.add});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        border
            ? BorderStory(all: all, index: index+1)
            : Visibility(
                child: CircleAvatar(
                  radius: 37,
                  backgroundImage: NetworkImage(all.userProfileImage[index]),
                ),
              ),
        add
            ? const StoryAdd()
            :const Visibility(
                child: SizedBox(),
              ),
      ],
    );
  }
}

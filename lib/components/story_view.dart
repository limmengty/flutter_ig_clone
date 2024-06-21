import 'package:flutter/material.dart';
import 'package:flutter_clone_ig/components/profile_name.dart';
import 'package:flutter_clone_ig/components/story.dart';
import 'package:flutter_clone_ig/data/all_link_image.dart';

class StoryView extends StatelessWidget {
  const StoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final AllImageLink all = AllImageLink();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Row(
            children: List.generate(
              1,
              (index) => Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Story(all: all, index: index, border: false, add: true),
                    const SizedBox(
                      height: 10,
                    ),
                    ProfileName(all: all, index: index, allName: false)
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: List.generate(
              8,
              (index) => Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Story(all: all, index: index, border: true, add: false),
                    const SizedBox(
                      height: 10,
                    ),
                    ProfileName(all: all, index: index +1, allName: true)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}

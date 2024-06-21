import 'package:flutter/material.dart';
import 'package:flutter_clone_ig/data/all_link_image.dart';
import 'package:flutter_clone_ig/data/text.dart';

// ignore: must_be_immutable
class ProfileName extends StatelessWidget {
  AllImageLink all = AllImageLink();
  Texts texts = Texts();
  final int index;
  bool allName = true;
  ProfileName(
      {super.key,
      required this.all,
      required this.index,
      required this.allName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        allName
            ? Text(
                texts.profileName[index],
                style: const TextStyle(fontSize: 12, color: Colors.black87),
              )
            : Text(
                texts.userProfileName[index],
                style: const TextStyle(fontSize: 12, color: Colors.black87),
              )
      ],
    );
  }
}

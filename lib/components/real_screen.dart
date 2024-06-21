import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class RealScreen extends StatefulWidget {
  final String profileName;
  final String profileImage;
  final String caption;
  final String like;
  final String comment;
  final String share;
  final String imageSound;
  bool isTrue = true;
  RealScreen(
      {super.key,
      required this.profileName,
      required this.profileImage,
      required this.caption,
      required this.like,
      required this.comment,
      required this.share,
      required this.imageSound});

  @override
  State<RealScreen> createState() => _RealScreenState();
}

class _RealScreenState extends State<RealScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Flexible(
              flex: 14,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    dense: true,
                    minLeadingWidth: 0,
                    horizontalTitleGap: 12,
                    title: Text(
                      widget.profileName,
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    leading: CircleAvatar(
                      radius: 18,
                      backgroundImage: NetworkImage(widget.profileImage),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: ExpandableText(
                      widget.caption,
                      style: const TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                      expandText: "more",
                      collapseText: "less",
                      expandOnTextTap: true,
                      collapseOnTextTap: true,
                      maxLines: 1,
                      linkColor: Colors.grey,
                    ),
                  ),
                  const ListTile(
                    dense: true,
                    minLeadingWidth: 0,
                    horizontalTitleGap: 5,
                    title: Text(
                      "music title - original music",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(
                      Icons.graphic_eq_outlined,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        widget.isTrue = !widget.isTrue;
                      });
                    },
                    icon: widget.isTrue
                        ? SvgPicture.network(
                            'https://www.svgrepo.com/show/491251/heart-outlined.svg', color: Colors.white,width: 32,)
                        : SvgPicture.network(
                            'https://www.svgrepo.com/show/491250/heart.svg', color: Colors.red,width: 32,),
                    iconSize: 32,
                  ),
                  Text(
                    widget.like,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {});
                    },
                    icon: Image.network(
                      "https://cdn0.iconfinder.com/data/icons/social-media-logo-4/32/Social_Media_instagram_comment-512.png",
                      width: 45,
                      height: 45,
                      color: Colors.white,
                    ),
                    iconSize: 32,
                    color: Colors.white,
                  ),
                  Text(
                    widget.comment,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.network(
                      "https://static.thenounproject.com/png/3861743-200.png",
                      width: 35,
                      height: 35,
                      color: Colors.white,
                    ),
                    iconSize: 32,
                    color: Colors.white,
                  ),
                  Text(
                    widget.share,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_horiz),
                    iconSize: 32,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.imageSound),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

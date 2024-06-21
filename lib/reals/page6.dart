import 'package:flutter/material.dart';
import 'package:flutter_clone_ig/components/real_screen.dart';
import 'package:flutter_clone_ig/data/all_link_image.dart';
import 'package:flutter_clone_ig/data/real_text.dart';
import 'package:flutter_clone_ig/data/text.dart';
import 'package:video_player/video_player.dart';

class VideoPage6 extends StatefulWidget {
  final AllImageLink imageLink = AllImageLink();
  final Texts texts = Texts();
  final RealText realText = RealText();
  VideoPage6({super.key});

  @override
  State<VideoPage6> createState() => _VideoPage6State();
}

class _VideoPage6State extends State<VideoPage6> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.asset(widget.imageLink.videos[5]);

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);

    // Start playing the video automatically
    _controller.play();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder(
            future: _initializeVideoPlayerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // If the VideoPlayerController has finished initialization, use
                // the data it provides to limit the aspect ratio of the video.
                return SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    // Use the VideoPlayer widget to display the video.
                    child: VideoPlayer(_controller),
                  ),
                );
              } else {
                // If the VideoPlayerController is still initializing, show a
                // loading spinner.
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.3), Colors.transparent],
                begin: const Alignment(0, -0.75),
                end: const Alignment(0, 0.1),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.3), Colors.transparent],
                end: const Alignment(0, -0.75),
                begin: const Alignment(0, 0.1),
              ),
            ),
          ),
          RealScreen(
            profileName: widget.texts.profileName[6],
            profileImage: widget.imageLink.profileImages[6],
            caption: widget.realText.descriptions[6],
            like: widget.realText.likes[6],
            comment: widget.realText.comments[6],
            share: widget.realText.shares[6],
            imageSound: widget.imageLink.profileImages[6],
          )
        ],
      ),
    );
  }
}

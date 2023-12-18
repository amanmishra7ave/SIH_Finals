import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class FirstCourse extends StatefulWidget {
  final String particularUrl;

  const FirstCourse({Key? key, required this.particularUrl}) : super(key: key);

  @override
  State<FirstCourse> createState() => _FirstCourseState();
}

class _FirstCourseState extends State<FirstCourse> {
  late YoutubePlayerController controller;

  @override
  void initState() {
    super.initState();

    // Use the URL passed as a parameter to initialize the controller
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.particularUrl)!,
      flags: const YoutubePlayerFlags(
        mute: false,
        loop: false,
        autoPlay: true,
      ),
    );
  }

  @override
  void deactivate() {
    controller.pause();

    super.deactivate();
  }

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
        ),
        builder: (context, player) => Scaffold(
          appBar: AppBar(
            title: const Text("Video Player"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 30,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: player,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                // ... Rest of your UI ...
              ],
            ),
          ),
        ),
      );
}

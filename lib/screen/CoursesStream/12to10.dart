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
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Column(
                    children: [
                      for (int i = 0; i < 10; i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            height: 45,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}


// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class FirstCourse extends StatefulWidget {
//   final String particularUrl;

//   const FirstCourse({Key? key, required this.particularUrl}) : super(key: key);

//   @override
//   State<FirstCourse> createState() => _FirstCourseState();
// }

// class _FirstCourseState extends State<FirstCourse> {
//   late YoutubePlayerController controller;

//   @override
//   void initState() {
//     super.initState();

//     // Use the URL passed as a parameter to initialize the controller
//     controller = YoutubePlayerController(
//       initialVideoId: YoutubePlayer.convertUrlToId(widget.particularUrl)!,
//       flags: const YoutubePlayerFlags(
//         mute: false,
//         loop: false,
//         autoPlay: true,
//       ),
//     );
//   }

//   @override
//   void deactivate() {
//     controller.pause();

//     super.deactivate();
//   }

//   @override
//   void dispose() {
//     controller.dispose();

//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) => YoutubePlayerBuilder(
//         player: YoutubePlayer(
//           controller: controller,
//         ),
//         builder: (context, player) => Scaffold(
//           appBar: AppBar(
//             title: const Text("Video Player"),
//           ),
//           body: SingleChildScrollView(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Card(
//                     elevation: 30,
//                     child: Container(
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(30)),
//                       child: player,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 16,
//                 ),
//                 Padding(
//                      padding: const EdgeInsets.only(left:8.0,right: 8.0),
//                      child: Column(
//                       children: [
//                       Container(
//                         width: double.infinity,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(20)
//                         ),

//                       ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                         width: double.infinity,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(20)
//                         ),

//                       ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                         width: double.infinity,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(20)
//                         ),

//                       ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                         width: double.infinity,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(20)
//                         ),

//                       ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                         width: double.infinity,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(20)
//                         ),

//                       ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                         width: double.infinity,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(20)
//                         ),

//                       ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                         width: double.infinity,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(20)
//                         ),

//                       ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                         width: double.infinity,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(20)
//                         ),

//                       ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Container(
//                         width: double.infinity,
//                         height: 50,
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(20)
//                         ),

//                       ),
//                         SizedBox(
//                           height: 15,
//                         ),
//                      );
              
                    
//                 )
            
                     
//                 // ... Rest of your UI ...
//               ],
//             ),
//           ),
//         ),
//       );
// }

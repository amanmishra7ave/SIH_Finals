import 'package:flutter/material.dart';

class Free_Courses extends StatelessWidget {
  const Free_Courses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 5,
          ),
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              // color: const Color.fromARGB(26, 233, 223, 223),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.blueAccent[200],
                  backgroundImage: AssetImage(
                    "images/tools.png",
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "MatheMatics",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              // color: const Color.fromARGB(26, 233, 223, 223),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.blueAccent[200],
                  backgroundImage: AssetImage(
                    "images/biology.png",
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Biology",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              // color: const Color.fromARGB(26, 233, 223, 223),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ClipOval(
                //   child: Image.asset(
                //     "images/history.png",
                //     fit: BoxFit.cover,
                //     width: 70,
                //     height: 70,
                //   ),
                // ), // CircleAvatar(

                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.blueAccent[200],
                  // backgroundImage: AssetImage(
                  // "images/history.png",
                  // ),
                  child: ClipOval(
                    child: Image.asset(
                      "images/history.png",
                      fit: BoxFit.cover,
                      width: 70,
                      height: 70,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Social Science",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.blueAccent[200],
                  backgroundImage: AssetImage("images/eng.png"),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "English",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 5,
          ),
        ],
      ),
    );
  }
}

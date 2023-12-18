import 'package:flutter/material.dart';

class drawerDetails extends StatelessWidget {
  const drawerDetails({
    super.key,
    required this.icons,
    required this.values,
  });

  final IconData? icons;
  final String? values;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: Colors.green.withOpacity(0.3),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Icon(icons),
          ),
          const SizedBox(
            width: 30,
          ),
          Text(
            values ?? "",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class CourseWidget extends StatelessWidget {
  const CourseWidget({
    super.key,
    this.CourseImg,
    this.CourseTitle,
  });

  final String? CourseImg;
  final String? CourseTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.network(
          CourseImg ?? "",
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          CourseTitle ?? "",
          style: const TextStyle(
            color: Color.fromARGB(255, 227, 205, 5),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}

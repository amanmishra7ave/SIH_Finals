import "package:flutter/material.dart";


class VerticalScreen extends StatefulWidget {
  const VerticalScreen({super.key});

  @override
  State<VerticalScreen> createState() => _VerticalScreenState();
}

class _VerticalScreenState extends State<VerticalScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: Container(
              // chi
            ))
          ],
        ),
        Container(
          
        )
      ],
    );
  }
}
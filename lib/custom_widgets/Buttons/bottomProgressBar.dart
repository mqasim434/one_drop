import 'package:flutter/material.dart';

class BottomProgressBar extends StatelessWidget {
  double? progressWidth = 0;
  BottomProgressBar({required this.progressWidth});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 370,
          height: 6,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        Container(
          width: progressWidth,
          height: 6,
          decoration: BoxDecoration(
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ],
    );
  }
}
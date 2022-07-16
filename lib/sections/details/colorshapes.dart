import 'package:flutter/material.dart';

class ColorShapes extends StatelessWidget {
  final Color color;
  const ColorShapes({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 7),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      height: 20,
      width: 20,
    );
  }
}

import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {
  final String imagePath;
  final String text;
  final String subText;
  final double size;

  ImageBox({
    required this.imagePath,
    required this.text,
    required this.subText,
    this.size = 150.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Text(
          subText,
          style: TextStyle(
            fontSize: 13.0,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
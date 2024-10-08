import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  final double size;
  final String imagePath;

  const ProfilePicture({
    Key? key,
    required this.size,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        imagePath,
        width: size,
        height: size,
        fit: BoxFit.cover,
      ),
    );
  }
}
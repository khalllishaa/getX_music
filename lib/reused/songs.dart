import 'package:flutter/material.dart';
import 'package:getx_music/reused/album.dart';

class SongItem extends StatelessWidget {
  final String? imagePath;
  final String title;
  final String subtitle;
  final double size;

  const SongItem({
    required this.title,
    required this.subtitle,
    this.imagePath,
    required this.size,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 10),
        ImageBox(
          imagePath: imagePath!,
          text: '',
          subText: '',
          size: size,
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 2),
            Text(
              subtitle,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:getx_music/reused/album.dart';
import 'package:getx_music/reused/color.dart';

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
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // Memisahkan konten dan ikon "more"
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded( // Expanded di sini untuk memberi space dinamis antara konten dan ikon
          child: Row(
            children: [
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
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ],
          ),
        ),
        IconButton(
          icon: Icon(Icons.more_vert, color: colorFont),
          onPressed: () { },
        ),
      ],
    );
  }
}

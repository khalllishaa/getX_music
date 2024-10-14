import 'package:flutter/material.dart';
import 'package:getx_music/reused/album.dart';
import 'package:getx_music/reused/color.dart';

class SongItem extends StatelessWidget {
  final String? imagePath;
  final String title;
  final String subtitle;
  final double size;
  final bool showBookmark;
  final VoidCallback? onTap;
  final VoidCallback? onTapIcon;

  const SongItem({
    required this.title,
    required this.subtitle,
    this.imagePath,
    required this.size,
    this.showBookmark = false,
    Key? key, this.onTap, this.onTapIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapIcon,
      child: Row(
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
          Expanded(
            child: Column(
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
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          if (showBookmark)
            Icon(
              Icons.bookmark_add_outlined,
              color: colorFont,
            ),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_music/pages/favMusic.dart';
import 'package:getx_music/reused/circle.dart';
import 'package:getx_music/reused/color.dart';
import 'package:getx_music/reused/login.dart';
import 'package:getx_music/reused/songs.dart';

class Collection extends StatelessWidget {
  const Collection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 48),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfilePicture(
                  imagePath: 'assets/profile.jpeg',
                  size: 50.0,
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Your Collection',
                      style: TextStyle(
                        fontSize: 22,
                        color: colorFont,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.search, color: colorFont),
                      onPressed: () {},
                    ),
                    SizedBox(width: 5),
                    IconButton(
                      icon: Icon(Icons.add, color: colorFont),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomButton(
                  text: 'All',
                  height: 35.0,
                  width: 65.0,
                  fontSize: 13.0,
                  backgroundColor: colorBackground,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
                SizedBox(width: 10),
                CustomButton(
                  text: 'Playlist',
                  height: 35.0,
                  width: 75.0,
                  fontSize: 13.0,
                  backgroundColor: colorBackground,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
                SizedBox(width: 10),
                CustomButton(
                  text: 'Album',
                  height: 35.0,
                  width: 75.0,
                  fontSize: 13.0,
                  backgroundColor: colorBackground,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
                SizedBox(width: 10),
                CustomButton(
                  text: 'Album',
                  height: 35.0,
                  width: 75.0,
                  fontSize: 13.0,
                  backgroundColor: colorBackground,
                  textColor: Colors.white,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.history, color: colorFont, size: 20),
                  onPressed: () {},
                ),
                Text(
                  'Recently',
                  style: TextStyle(
                    fontSize: 16,
                    color: colorFont,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                child: InkWell(
                  onTap: () {
                    Get.to(() => FavMusic()); // Pindah ke halaman XXXTENTACION
                  },
                  child: SongItem(
                    imagePath: 'assets/xxt.jpeg',
                    title: 'Your Favourite Song',
                    subtitle: 'playlist',
                    size: 120,
                    showBookmark: false,
                    onTap: () {
                      Get.to(FavMusic());
                    },
                  ),
                ),
              ),
              SongItem(
                imagePath: 'assets/xxt.jpeg',
                title: 'Your Favourite Song',
                subtitle: 'playlist',
                size: 120,
                showBookmark: false,
                onTap: () {
                  Get.to(FavMusic());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

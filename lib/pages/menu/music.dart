import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_music/pages/favMusic.dart';
import 'package:getx_music/reused/circle.dart';
import 'package:getx_music/reused/color.dart';
import 'package:getx_music/reused/songs.dart';

class Collection extends StatelessWidget {
  const Collection({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengambil ukuran layar
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.06), // Menggunakan 6% dari tinggi layar
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.04, // 4% dari lebar layar
              vertical: screenHeight * 0.012, // 1.2% dari tinggi layar
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfilePicture(
                  imagePath: 'assets/profile.jpeg',
                  size: screenHeight * 0.06, // Ukuran gambar 6% dari tinggi layar
                ),
                SizedBox(width: screenWidth * 0.05),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Your Collection',
                      style: TextStyle(
                        fontSize: screenWidth * 0.06, // 6% dari lebar layar
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
                    SizedBox(width: screenWidth * 0.01),
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
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.03, // 3% dari lebar layar
              vertical: screenHeight * 0.018, // 1.8% dari tinggi layar
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorBackground,
                    minimumSize: Size(screenWidth * 0.15, screenHeight * 0.045), // Menyesuaikan ukuran tombol
                  ),
                  onPressed: () {},
                  child: Text(
                    'All',
                    style: TextStyle(fontSize: screenWidth * 0.035, color: Colors.white),
                  ),
                ),
                SizedBox(width: screenWidth * 0.03),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorBackground,
                    minimumSize: Size(screenWidth * 0.18, screenHeight * 0.045),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Playlist',
                    style: TextStyle(fontSize: screenWidth * 0.035, color: Colors.white),
                  ),
                ),
                SizedBox(width: screenWidth * 0.03),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: colorBackground,
                    minimumSize: Size(screenWidth * 0.18, screenHeight * 0.045),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Album',
                    style: TextStyle(fontSize: screenWidth * 0.035, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.history, color: colorFont, size: screenWidth * 0.05),
                  onPressed: () {},
                ),
                Text(
                  'Recently',
                  style: TextStyle(
                    fontSize: screenWidth * 0.04,
                    color: colorFont,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.02),
          Column(
            children: [
              Container(
                child: InkWell(
                  onTap: () {
                    Get.to(() => FavMusic());
                  },
                  child: SongItem(
                    imagePath: 'assets/xxt.jpeg',
                    title: 'Your Favourite Song',
                    subtitle: 'playlist',
                    size: screenHeight * 0.15, // 15% dari tinggi layar
                    showBookmark: false,
                    onTap: () {
                      Get.to(FavMusic());
                    },
                  ),
                ),
              ),
              SongItem(
                imagePath: 'assets/juice.jpeg',
                title: 'Then',
                subtitle: 'playlist',
                size: screenHeight * 0.15,
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

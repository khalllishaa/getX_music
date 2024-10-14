import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_music/pages/xxt.dart';
import 'package:getx_music/reused/album.dart';
import 'package:getx_music/reused/circle.dart';
import 'package:getx_music/reused/color.dart';
import 'package:getx_music/reused/explore.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.03), // 3% dari tinggi layar
          // Header section
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04, vertical: screenHeight * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfilePicture(
                  imagePath: 'assets/profile.jpeg',
                  size: screenHeight * 0.06, // 6% dari tinggi layar
                ),
                SizedBox(width: screenWidth * 0.05), // 5% dari lebar layar
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'hi, khal!',
                      style: TextStyle(
                        fontSize: screenHeight * 0.022, // Ukuran font 2.2% dari tinggi layar
                        color: colorFont,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.notifications, color: colorFont),
                      onPressed: () {},
                    ),
                    SizedBox(width: screenWidth * 0.03), // 3% dari lebar layar
                    IconButton(
                      icon: Icon(Icons.group_add, color: colorFont),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Get.to(() => XXXTENTACIONPage());
                        },
                        child: Explore(
                          imagePath: 'assets/xxt.jpeg',
                          text: 'XXXTENTACION',
                          height: screenHeight * 0.09, // 9% dari tinggi layar
                          width: screenWidth * 0.45, // 45% dari lebar layar
                        ),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Expanded(
                      child: Explore(
                        imagePath: 'assets/juice.jpeg',
                        text: 'Lil Peep',
                        height: screenHeight * 0.09,
                        width: screenWidth * 0.45,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02), // 2% dari tinggi layar
                Row(
                  children: [
                    Expanded(
                      child: Explore(
                        imagePath: 'assets/juice.jpeg',
                        text: 'Juice WRLD',
                        height: screenHeight * 0.09,
                        width: screenWidth * 0.45,
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Expanded(
                      child: Explore(
                        imagePath: 'assets/xxt.jpeg',
                        text: 'Lil Tjay',
                        height: screenHeight * 0.09,
                        width: screenWidth * 0.45,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.03),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.03),
              child: Text(
                'Made For You',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenHeight * 0.025, // 2.5% dari tinggi layar
                  color: colorWhite,
                ),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.01),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: screenWidth * 0.02),
                  ImageBox(
                    imagePath: 'assets/xxt.jpeg',
                    text: 'My World 2.0',
                    subText: 'Justin Bieber',
                    size: screenWidth * 0.35, // 35% dari lebar layar
                  ),
                  SizedBox(width: screenWidth * 0.04),
                  ImageBox(
                    imagePath: 'assets/juice.jpeg',
                    text: 'The Wizard Liz',
                    subText: 'The Wizard Liz',
                    size: screenWidth * 0.35,
                  ),
                  SizedBox(width: screenWidth * 0.04),
                  ImageBox(
                    imagePath: 'assets/xxt.jpeg',
                    text: 'Dongeng Tidur',
                    subText: 'Irene Evita & Kukila',
                    size: screenWidth * 0.35,
                  ),
                  SizedBox(width: screenWidth * 0.04),
                  ImageBox(
                    imagePath: 'assets/juice.jpeg',
                    text: 'Cry Baby',
                    subText: 'Lil Peep',
                    size: screenWidth * 0.35,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

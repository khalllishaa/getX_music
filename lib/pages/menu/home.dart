import 'package:flutter/material.dart';
import 'package:getx_music/reused/album.dart';
import 'package:getx_music/reused/circle.dart';
import 'package:getx_music/reused/color.dart';
import 'package:getx_music/reused/explore.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfilePicture(
                  imagePath: 'assets/music.jpg',
                  size: 50.0,
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'hi, khal!',
                      style: TextStyle(
                        fontSize: 18,
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
                    SizedBox(width: 10),
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
            padding: const EdgeInsets.symmetric(horizontal: 3.3),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Explore(
                        imagePath: 'assets/xxt.jpeg',
                        text: 'XXXTENTACION',
                        height: 70.0,
                        width: 190.0,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Explore(
                        imagePath: 'assets/xxt.jpeg',
                        text: 'Lil Peep',
                        height: 70.0,
                        width: 190.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Explore(
                        imagePath: 'assets/xxt.jpeg',
                        text: 'Juice WRLD',
                        height: 70.0,
                        width: 190.0,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Explore(
                        imagePath: 'assets/xxt.jpeg',
                        text: 'Lil Tjay',
                        height: 70.0,
                        width: 190.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Explore(
                        imagePath: 'assets/xxt.jpeg',
                        text: 'then',
                        height: 70.0,
                        width: 190.0,
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Explore(
                        imagePath: 'assets/xxt.jpeg',
                        text: 'ASAP Rocky',
                        height: 70.0,
                        width: 190.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                'Made For You',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: colorWhite,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ImageBox(
                    imagePath: 'assets/xxt.jpeg',
                    text: 'My World 2.0',
                    subText: 'Justin Bieber',
                    size: 150.0,
                  ),
                  SizedBox(width: 15),
                  ImageBox(
                    imagePath: 'assets/xxt.jpeg',
                    text: 'The Wizard Liz',
                    subText: 'The Wizard Liz',
                    size: 150.0,
                  ),
                  SizedBox(width: 15),
                  ImageBox(
                    imagePath: 'assets/xxt.jpeg',
                    text: 'Dongeng Tidur',
                    subText: 'Irene Evita & Kukila',
                    size: 150.0,
                  ),
                  SizedBox(width: 15),
                  ImageBox(
                    imagePath: 'assets/xxt.jpeg',
                    text: 'Cry Baby',
                    subText: 'Lil Peep',
                    size: 150.0,
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

import 'package:flutter/material.dart';
import 'package:getx_music/reused/album.dart';
import 'package:getx_music/reused/color.dart';
import 'package:getx_music/reused/explore.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 60),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Mengubah width Container menjadi berdasarkan lebar layar
              Container(
                width: screenWidth * 0.9, // 90% dari lebar layar
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                  color: colorBackground,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: colorFont,
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Wanna listen song?',
                          hintStyle: TextStyle(color: colorWhite),
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02), // Jarak vertikal berdasarkan tinggi layar
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Popular Today',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.05, // Ukuran teks berdasarkan lebar layar
                      color: colorWhite,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ImageBox(
                      imagePath: 'assets/xxt.jpeg',
                      text: 'My World 2.0',
                      subText: 'Justin Bieber',
                      size: screenWidth * 0.35, // Ukuran kotak gambar berdasarkan lebar layar
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
              SizedBox(height: screenHeight * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Made For You',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.05,
                      color: colorWhite,
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
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
                            height: screenHeight * 0.1, // Tinggi Explore berdasarkan tinggi layar
                            width: screenWidth * 0.4,
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Expanded(
                          child: Explore(
                            imagePath: 'assets/juice.jpeg',
                            text: 'Lil Peep',
                            height: screenHeight * 0.1,
                            width: screenWidth * 0.4,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Row(
                      children: [
                        Expanded(
                          child: Explore(
                            imagePath: 'assets/juice.jpeg',
                            text: 'Juice WRLD',
                            height: screenHeight * 0.1,
                            width: screenWidth * 0.4,
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Expanded(
                          child: Explore(
                            imagePath: 'assets/xxt.jpeg',
                            text: 'Lil Tjay',
                            height: screenHeight * 0.1,
                            width: screenWidth * 0.4,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Browse Genres',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.05,
                      color: colorWhite,
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ImageBox(
                      imagePath: 'assets/juice.jpeg',
                      text: 'My World 2.0',
                      subText: 'Justin Bieber',
                      size: screenWidth * 0.35,
                    ),
                    SizedBox(width: screenWidth * 0.04),
                    ImageBox(
                      imagePath: 'assets/xxt.jpeg',
                      text: 'The Wizard Liz',
                      subText: 'The Wizard Liz',
                      size: screenWidth * 0.35,
                    ),
                    SizedBox(width: screenWidth * 0.04),
                    ImageBox(
                      imagePath: 'assets/juice.jpeg',
                      text: 'Dongeng Tidur',
                      subText: 'Irene Evita & Kukila',
                      size: screenWidth * 0.35,
                    ),
                    SizedBox(width: screenWidth * 0.04),
                    ImageBox(
                      imagePath: 'assets/xxt.jpeg',
                      text: 'Cry Baby',
                      subText: 'Lil Peep',
                      size: screenWidth * 0.35,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

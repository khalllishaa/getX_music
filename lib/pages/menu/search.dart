import 'package:flutter/material.dart';
import 'package:getx_music/reused/album.dart';
import 'package:getx_music/reused/color.dart';
import 'package:getx_music/reused/explore.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 60),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 400,
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
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Popular Today',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: colorWhite,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
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
                      imagePath: 'assets/juice.jpeg',
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
                      imagePath: 'assets/juice.jpeg',
                      text: 'Cry Baby',
                      subText: 'Lil Peep',
                      size: 150.0,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
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
                            imagePath: 'assets/juice.jpeg',
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
                            imagePath: 'assets/juice.jpeg',
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
                  ],
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'Browse Genres',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
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
                      imagePath: 'assets/juice.jpeg',
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
            ],
          ),
        ),
      ),
    );
  }
}
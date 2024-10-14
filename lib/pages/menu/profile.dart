import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_music/reused/circle.dart';
import 'package:getx_music/reused/color.dart';
import 'package:getx_music/reused/songs.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(screenWidth * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.03),
              Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ProfilePicture(
                          size: screenHeight * 0.16,
                          imagePath: 'assets/profile.jpeg',
                        ),
                        SizedBox(width: screenWidth * 0.03),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Khal',
                              style: TextStyle(
                                color: colorWhite,
                                fontSize: screenWidth * 0.06,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Text(
                              '4 Public Playlists • 21 Following',
                              style: TextStyle(
                                fontSize: screenWidth * 0.03,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.015),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: colorTransparent,
                                    side: BorderSide(color: colorFont, width: 1.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: screenWidth * 0.04,
                                      vertical: screenHeight * 0.01,
                                    ),
                                  ),
                                  child: Text(
                                    'Edit',
                                    style: TextStyle(color: colorWhite),
                                  ),
                                ),
                                SizedBox(width: screenWidth * 0.03),
                                IconButton(
                                  icon: Icon(Icons.more_vert, color: colorWhite),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                'Top tracks this month',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.05,
                  color: colorWhite,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              SongItem(
                imagePath: 'assets/xxt.jpeg',
                title: 'Everybody Dies In Their Nightmares',
                subtitle: 'xxxtentacion',
                size: screenHeight * 0.065,
                onTap: () {},
              ),
              SongItem(
                imagePath: 'assets/juice.jpeg',
                title: 'All the girls are same',
                subtitle: 'Juice WRLD',
                size: screenHeight * 0.065,
                onTap: () {},
              ),
              SizedBox(height: screenHeight * 0.03),
              Text(
                'Top artist this month',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.05,
                  color: colorWhite,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        ProfilePicture(size: screenHeight * 0.14, imagePath: 'assets/xxt.jpeg'),
                        SizedBox(height: screenHeight * 0.005),
                        Text(
                          'XXXTentacion',
                          style: TextStyle(
                            color: colorWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth * 0.035,
                          ),
                        ),
                        Text(
                          'Artist',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: screenWidth * 0.025,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Column(
                      children: [
                        ProfilePicture(size: screenHeight * 0.14, imagePath: 'assets/juice.jpeg'),
                        SizedBox(height: screenHeight * 0.005),
                        Text(
                          'Juice WRLD',
                          style: TextStyle(
                            color: colorWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth * 0.035,
                          ),
                        ),
                        Text(
                          'Artist',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: screenWidth * 0.025,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Column(
                      children: [
                        ProfilePicture(size: screenHeight * 0.14, imagePath: 'assets/xxt.jpeg'),
                        SizedBox(height: screenHeight * 0.005),
                        Text(
                          'XXXTentacion',
                          style: TextStyle(
                            color: colorWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth * 0.035,
                          ),
                        ),
                        Text(
                          'Artist',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: screenWidth * 0.025,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: screenWidth * 0.03),
                    Column(
                      children: [
                        ProfilePicture(size: screenHeight * 0.14, imagePath: 'assets/juice.jpeg'),
                        SizedBox(height: screenHeight * 0.005),
                        Text(
                          'Juice Wrld',
                          style: TextStyle(
                            color: colorWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth * 0.035,
                          ),
                        ),
                        Text(
                          'Artist',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: screenWidth * 0.025,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}

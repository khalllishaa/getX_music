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
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ProfilePicture(
                          size: 130,
                          imagePath: 'assets/profile.jpeg',
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Khal',
                              style: TextStyle(
                                color: colorWhite,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '4 Public Playlists • 21 Following',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 10),
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
                                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  ),
                                  child: Text(
                                    'Edit',
                                    style: TextStyle(color: colorWhite),
                                  ),
                                ),
                                SizedBox(width: 10),
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
                  fontSize: 20,
                  color: colorWhite,
                ),
              ),
              SizedBox(height: 10),
              SongItem(
                imagePath: 'assets/xxt.jpeg',
                title: 'Everybody Dies In Their Nightmares',
                subtitle: 'xxxtentacion',
                size: 50,
                onTap: () {},
              ),
              SongItem(
                imagePath: 'assets/juice.jpeg',
                title: 'All the girls are same',
                subtitle: 'Juice WRLD',
                size: 50,
                onTap: () {},
              ),
              Text(
                'Top artist this month',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: colorWhite,
                ),
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        ProfilePicture(size: 110, imagePath: 'assets/xxt.jpeg'),
                        SizedBox(height: 5),
                        Text(
                          'XXXTentacion',
                          style: TextStyle(
                            color: colorWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          'Artist',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        ProfilePicture(size: 110, imagePath: 'assets/juice.jpeg'),
                        SizedBox(height: 5),
                        Text(
                          'Juice WRLD',
                          style: TextStyle(
                            color: colorWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          'Artist',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        ProfilePicture(size: 110, imagePath: 'assets/xxt.jpeg'),
                        SizedBox(height: 5),
                        Text(
                          'XXXTentacion',
                          style: TextStyle(
                            color: colorWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          'Artist',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        ProfilePicture(size: 110, imagePath: 'assets/juice.jpeg'),
                        SizedBox(height: 5),
                        Text(
                          'Juice Wrld',
                          style: TextStyle(
                            color: colorWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          'Artist',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

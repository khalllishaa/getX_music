import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_music/reused/circle.dart';
import 'package:getx_music/reused/color.dart';
import 'package:getx_music/reused/songs.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProfilePicture(
                  size: 135,
                  imagePath: 'assets/xxt.jpeg',
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Khal',
                      style: TextStyle(
                        color: colorWhite,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '4 Public Playlists • 21 Following',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        // Tombol Edit Profile
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: colorTransparent,
                            side: BorderSide(color: colorFont, width: 1.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            minimumSize: Size(75, 25),
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                          ),
                          child: Text('Edit',
                            style: TextStyle(
                              color: colorWhite,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        // Icon untuk Settings
                        IconButton(
                          icon: Icon(Icons.more_vert, color: colorWhite),
                          onPressed: () { },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Playlist',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: colorWhite,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SongItem(
                    imagePath: 'assets/xxt.jpeg',
                    title: 'Another Song',
                    subtitle: 'Playlist • khal',
                    size: 120),
                SongItem(
                    imagePath: 'assets/xxt.jpeg',
                    title: 'Another Song',
                    subtitle: 'Playlist • khal',
                    size: 120),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Top artist this month',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: colorWhite,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        ProfilePicture(size: 120, imagePath: 'assets/xxt.jpeg'),
                        SizedBox(height: 5),
                        Text('XXXTentacion',
                          style: TextStyle(
                            color: colorWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        Text('Artist',
                          style: TextStyle(
                            color: colorWhite,
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Column(
                      children: [
                        ProfilePicture(size: 120, imagePath: 'assets/xxt.jpeg'),
                        SizedBox(height: 5),
                        Text('XXXTentacion',
                          style: TextStyle(
                            color: colorWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        Text('Artist',
                          style: TextStyle(
                            color: colorWhite,
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                          ),)
                      ],
                    ),
                    SizedBox(height: 15),
                    Column(
                      children: [
                        ProfilePicture(size: 120, imagePath: 'assets/xxt.jpeg'),
                        SizedBox(height: 5),
                        Text('XXXTentacion',
                          style: TextStyle(
                            color: colorWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                        Text('Artist',
                          style: TextStyle(
                            color: colorWhite,
                            fontWeight: FontWeight.normal,
                            fontSize: 10,
                          ),)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_music/TaskController.dart';
import 'package:getx_music/pages/Models/TaskModel.dart';
import 'package:getx_music/reused/circle.dart';
import 'package:getx_music/reused/color.dart';
import 'package:getx_music/reused/songs.dart';

class XXXTENTACIONPage extends StatelessWidget {
  final TaskController favSongController = Get.put(TaskController()); // Inisialisasi controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('XXXTENTACION'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ProfilePicture(
                          size: 150,
                          imagePath: 'assets/xxt.jpeg',
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'XXXTENTACION',
                              style: TextStyle(
                                color: colorWhite,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '40,891,522 monthly listener',
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
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 8,
                                    ),
                                  ),
                                  child: Text(
                                    'Follow',
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
              SizedBox(height: 20),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Popular',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: colorWhite,
                      ),
                    ),
                    SizedBox(height: 20),
                    SongItem(
                      imagePath: 'assets/xxt.jpeg',
                      title: 'Everybody Dies In Their Nightmares',
                      subtitle: 'xxxtentacion',
                      size: 50,
                      showBookmark: true,
                      onTap: (){},
                      onTapIcon: () {
                        FavSongModel favSong = FavSongModel(
                          title: "Everybody Dies In Their Nightmares",
                          artist: "XXXTENTACION",
                          image: "assets/xxt.jpeg",
                        );
                        if (favSongController.isFavSong(favSong)) {
                          Get.snackbar(
                            'Already in Favorites!',
                            '${favSong.title} by ${favSong.artist} is already in your favorites!',
                            colorText: colorWhite,
                            snackPosition: SnackPosition.BOTTOM,
                            duration: Duration(seconds: 2),
                          );
                        } else {
                          favSongController.addFavSong(favSong);
                          Get.snackbar(
                            'Song Liked!',
                            'Added ${favSong.title} by ${favSong.artist} to your Favorite!',
                            colorText: colorWhite,
                            snackPosition: SnackPosition.BOTTOM,
                            duration: Duration(seconds: 1),
                          );
                        }
                      },
                    ),
                    SongItem(
                      imagePath: 'assets/xxt.jpeg',
                      title: 'I Dont Wanna Do This Anymore',
                      subtitle: 'xxxtentacion',
                      size: 50,
                      showBookmark: true,
                      onTap: (){},
                      onTapIcon: () {
                        FavSongModel favSong = FavSongModel(
                          title: "I Dont Wanna Do This Anymore",
                          artist: "XXXTENTACION",
                          image: "assets/xxt.jpeg",
                        );
                        if (favSongController.isFavSong(favSong)) {
                          Get.snackbar(
                            'Already in Favorites!',
                            '${favSong.title} by ${favSong.artist} is already in your favorites!',
                            colorText: colorWhite,
                            snackPosition: SnackPosition.BOTTOM,
                            duration: Duration(seconds: 2),
                          );
                        } else {
                          favSongController.addFavSong(favSong);
                          Get.snackbar(
                            'Song Liked!',
                            'Added ${favSong.title} by ${favSong.artist} to your Favorite!',
                            colorText: colorWhite,
                            snackPosition: SnackPosition.BOTTOM,
                            duration: Duration(seconds: 1),
                          );
                        }
                      },
                    ),
                    SongItem(
                      imagePath: 'assets/xxt.jpeg',
                      title: 'Jocelyn Flores',
                      subtitle: 'xxxtentacion',
                      size: 50,
                      showBookmark: true,
                      onTap: (){},
                      onTapIcon: () {
                        FavSongModel favSong = FavSongModel(
                          title: "Jocelyn Flores",
                          artist: "XXXTENTACION",
                          image: "assets/xxt.jpeg",
                        );
                        if (favSongController.isFavSong(favSong)) {
                          Get.snackbar(
                            'Already in Favorites!',
                            '${favSong.title} by ${favSong.artist} is already in your favorites!',
                            colorText: colorWhite,
                            snackPosition: SnackPosition.BOTTOM,
                            duration: Duration(seconds: 2),
                          );
                        } else {
                          favSongController.addFavSong(favSong);
                          Get.snackbar(
                            'Song Liked!',
                            'Added ${favSong.title} by ${favSong.artist} to your Favorite!',
                            colorText: colorWhite,
                            snackPosition: SnackPosition.BOTTOM,
                            duration: Duration(seconds: 1),
                          );
                        }
                      },
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
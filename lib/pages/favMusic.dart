import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_music/TaskController.dart';
import 'package:getx_music/reused/color.dart';

class FavMusic extends StatelessWidget {
  final TaskController favSongController = Get.find<TaskController>();

  void showDeleteConfirmationDialog(BuildContext context, favSong) {
    Get.dialog(
      AlertDialog(
        title: Text('Confirm'),
        content: Text('Want to remove "${favSong.title}" from your favorites?'),
        actions: [
          TextButton(
            onPressed: () {
              Get.back();
              favSongController.deleteFavSong(favSong);
              Get.snackbar(
                'Status Changed!',
                'Removed ${favSong.title} by ${favSong.artist} from your Favorites!',
                colorText: colorWhite,
                snackPosition: SnackPosition.BOTTOM,
                duration: Duration(seconds: 1),
              );
            },
            child: Text('Yes', style: TextStyle(color: colorFont)),
          ),
          TextButton(
            onPressed: () {
              Get.back();
            },
            child: Text('No', style: TextStyle(color: colorFont),),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: colorTransparent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Obx(() {
        return ListView.builder(
          itemCount: favSongController.favSongs.length,
          itemBuilder: (context, index) {
            final favSong = favSongController.favSongs[index];
            return Stack(children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            favSong.title,
                            style: TextStyle(
                                color: colorWhite,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 2.0),
                          Text(
                            favSong.artist,
                            style: TextStyle(
                                color: colorWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ]
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(
                    Icons.star_rounded,
                    size: 33,
                    color: colorFont,
                  ),
                  onPressed: () {
                    showDeleteConfirmationDialog(context, favSong);
                  },
                ),
              )
            ]);
          },
        );
      }),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_music/controller/bottom_nav_ctr.dart';
import 'package:getx_music/pages/favMusic.dart';
import 'package:getx_music/pages/menu/home.dart';
import 'package:getx_music/pages/menu/music.dart';
import 'package:getx_music/pages/menu/search.dart';
import 'package:getx_music/pages/menu/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    // Connect UI to controller pake binding
    final BottomNavCtr bottomNavCtr = Get.find();

    // Define the list of menus
    final List<Widget> menus = [
      Home(),
      Search(),
      Collection(),
      Profile(),
    ];

    return Obx(() {
      return Scaffold(
        body: menus[bottomNavCtr.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavCtr.selectedIndex.value,
          onTap: bottomNavCtr.changeIndexMenu,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.music_note), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          ],
        ),
      );
    });
  }
}

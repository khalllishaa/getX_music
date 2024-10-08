// splashscreen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Get.offNamed('/');
    });

    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/music.jpg',
          width: 170,
        ),
      ),
    );
  }
}

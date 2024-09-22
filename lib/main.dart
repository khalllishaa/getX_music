import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_music/pages/home_page.dart';
import 'package:getx_music/pages/login_pages.dart';
import 'package:getx_music/reused/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // Menghilangkan banner debug
      initialRoute: '/', // Halaman pertama (LoginPage)
      getPages: [
        GetPage(name: '/', page: () => LoginPage()), // Route untuk LoginPage
        GetPage(name: '/homepage', page: () => HomePage()), // Route untuk HomePage
      ],
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorBottom,
        selectedItemColor: colorFont,
        unselectedItemColor: colorBackground,
        ),
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Colors.black,
      ),
    );
  }
}

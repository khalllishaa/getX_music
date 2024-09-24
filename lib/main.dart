import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_music/binding/binding.dart';
import 'package:getx_music/pages/home_page.dart';
import 'package:getx_music/pages/login_pages.dart'; // Pastikan halaman login di-import
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
      initialRoute: '/', // Set initial route ke halaman login
      getPages: [
        GetPage(
          name: '/',
          page: () => const LoginPage(),
        ),
        GetPage(
          name: '/home',
          page: () => HomePage(),
          binding: Appbinding(),
        ),
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

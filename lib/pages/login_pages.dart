import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_music/reused/color.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/music.jpg',
                    width: 170,
                  ),
                  Text(
                    'Yumi',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: colorFont
                    ),
                  )
                ],
              ),
            ),
            Text.rich(
              TextSpan(
                text: 'Feel the ',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Rhythm',
                    style: TextStyle(
                      color: colorFont,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' live the moment!',
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/home'); // Pastikan routing ke '/home'
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: colorBackground,
                minimumSize: Size(370, 50),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                "Start",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white, // Warna teks
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

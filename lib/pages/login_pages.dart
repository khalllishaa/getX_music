import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_music/reused/color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.05),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/music.jpg',
                    width: screenWidth * 0.45,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Text(
                    'Yumi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.05,
                      color: colorFont,
                    ),
                  ),
                ],
              ),
            ),
            Text.rich(
              TextSpan(
                text: 'Feel the ',
                style: TextStyle(
                  fontSize: screenWidth * 0.09,
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
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.07),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/register');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: colorBackground,
                minimumSize: Size(screenWidth * 0.9, screenHeight * 0.06),
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08, vertical: screenHeight * 0.015),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                "Start",
                style: TextStyle(
                  fontSize: screenWidth * 0.045,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final double fontSize;
  final Color textColor;
  final Color backgroundColor;
  final Function()? onPressed;

  const CustomButton({
    required this.text,
    this.height = 50.0,
    this.width = double.infinity,
    this.fontSize = 16.0,
    this.textColor = Colors.white,
    required this.backgroundColor,
    this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}

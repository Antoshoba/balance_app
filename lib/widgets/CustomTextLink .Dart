import 'package:flutter/material.dart';

// Custom Reusable Widget
class CustomTextLink extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  final FontWeight fontWeight;
  final VoidCallback onTap;

  const CustomTextLink({
    Key? key,
    required this.text,
    this.fontSize = 16.0,
    this.textColor = Colors.blue,
    this.fontWeight = FontWeight.normal,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            color: textColor,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}

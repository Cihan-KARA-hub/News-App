import 'package:flutter/material.dart';

class AppTheme {
  static const Color navBackgroundColor = Color.fromARGB(255, 144, 142, 142);
  static const Color gridBackColor = Color.fromARGB(255, 225, 220, 220);
  static const Color navIconColor = Colors.black87;
  static const double navIconSize = 30;
  static const TextStyle navText = TextStyle(fontWeight: FontWeight.w700);
  static const TextStyle headLineText = TextStyle(
    fontSize: 30,
    color: Colors.black,
    fontWeight: FontWeight.w300,
  );
  static const TextStyle SmallLineText = TextStyle(
    fontSize: 15,
    color: Colors.black,
    fontWeight: FontWeight.w400,
  );
  static TextStyle mediumLineText({required Color colors}) {
    return TextStyle(
      fontSize: 20,
      color: colors,
      fontWeight: FontWeight.w400,
    );
  }
}

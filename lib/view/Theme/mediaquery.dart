import 'package:flutter/material.dart';

class MediaQuerys {
  static double screenWith(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screeHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static bool isSmallScreen(BuildContext context) {
    return screenWith(context) < 450;
  }

  static bool isMediumScreen(BuildContext context) {
    return screenWith(context) >= 600 && screenWith(context) < 1024;
  }

  static bool isLargeScreen(BuildContext context) {
    return screenWith(context) >= 1024;
  }
}

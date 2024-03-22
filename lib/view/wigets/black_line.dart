import 'package:flutter/material.dart';
import 'package:learn202/view/Theme/mediaquery.dart';

class BlackLine {
  static Widget blackLine(double height, BuildContext context) {
    return Container(
      height: height,
      width: MediaQuerys.isSmallScreen(context)
          ? 225
          : MediaQuerys.isMediumScreen(context)
              ? 300
              : 500,
      color: Colors.black,
    );
  }
}

import 'package:flutter/material.dart';

class IconWigets {
  static Widget buildIconButton(
      {required Icon icons,
      required VoidCallback onPressed,
      required double size}) {
    return IconButton(
      onPressed: onPressed,
      icon: icons,
      iconSize: size,
      color: Colors.black87,
    );
  }
}

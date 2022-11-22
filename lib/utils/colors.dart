import 'package:flutter/material.dart';

const Color tdRed = Color(0xFFDA4040);

const Color tdBlack = Color(0xFF3A3A3A);

const Color tdBlue = Color(0xFF5F52EE);

const Color tdGrey = Color(0xFF717171);

const Color tdBGColor = Color(0xFFEEEFF5);

const Color tdLightPurple = Color.fromARGB(255, 235, 128, 203);

const Color tdGreen = Color.fromARGB(255, 6, 243, 85);

const Color tdDarkBlue = Color.fromARGB(255, 13, 3, 49);

const Color BG_DarkBlue = Color.fromARGB(255, 6, 82, 117);

hexStringToColor(String hexColor) {
  hexColor = hexColor.toLowerCase().replaceAll('#', "");
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }
  return Color(int.parse(hexColor, radix: 16));
}

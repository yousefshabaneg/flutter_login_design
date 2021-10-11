import 'package:flutter/material.dart';

var primary = Color(0xff0A0E1D);
var secondary = Color(0xff151d3b);
var dark = Color(0xFF8D8E98);
var red = Color(0xffD5004A);
var redAccent = Color(0xffff0059);

Map<int, Color> swatch = {
  50: const Color(0x1A0A0E1D), //10%
  100: const Color(0x330A0E1D), //20%
  200: const Color(0x4D0A0E1D), //30%
  300: const Color(0x660A0E1D), //40%
  400: const Color(0x800A0E1D), //50%
  500: const Color(0x990A0E1D), //60%
  600: const Color(0xBF0A0E1D), //70%
  700: const Color(0xCC0A0E1D), //80%
  800: const Color(0xE60A0E1D), //90%
  900: const Color(0xff0A0E1D), //100%
};

MaterialColor primaryCustome = MaterialColor(0xff0A0E1D, swatch);

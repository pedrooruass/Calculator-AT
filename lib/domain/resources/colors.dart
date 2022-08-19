import 'package:flutter/material.dart';

const Color lightModeBackgroundColor =
    Color.fromARGB(255, 242, 241, 241); // grey[300]
const Color darkModeBackgroundColor =
    Color.fromARGB(255, 32, 32, 32); // grey[900]
const Color lightModePrimaryTextColor = Colors.black54;
const Color lightModeSecondaryTextColor = Colors.black38;
const Color darkModePrimaryTextColor = Colors.white70;
const Color darkModeSecondaryTextColor = Colors.white54;

const Color lightModePrimaryButtonColor = Color.fromARGB(255, 214, 82, 126);
const Color lightModeSecondaryButtonColor = Colors.lightBlue;
const Color lightModeThirdButtonColor = Colors.purple;

const Color darkModePrimaryButtonColor = Color(0xFFEDEDF0);
const Color darkModeSecondaryButtonColor = Color.fromARGB(255, 53, 116, 111);
const Color darkModeThirdButtonColor = Color(0xFF438CF3);

const Color boxButtonColor = Colors.white;
const List<BoxShadow> lightModeNotPressedBoxShadow = [
  BoxShadow(
    color: Colors.white38,
    offset: Offset(-5, -8),
    spreadRadius: -4,
    blurRadius: 10,
  ),
  BoxShadow(
    color: Colors.black54,
    spreadRadius: -8,
    offset: Offset(5, 5),
    blurRadius: 12,
  ),
];
const List<BoxShadow> darkModeNotPressedBoxShadow = [
  BoxShadow(
    color: Colors.white12,
    offset: Offset(-3, -8),
    spreadRadius: -8,
    blurRadius: 12,
  ),
  BoxShadow(
    color: Colors.black,
    spreadRadius: -4,
    offset: Offset(5, 5),
    blurRadius: 10,
  ),
];

const List<BoxShadow> lightModePressedBoxShadow = [
  BoxShadow(
    color: Colors.white,
    offset: Offset(5, 5),
    spreadRadius: -4,
    blurRadius: 10,
  ),
  BoxShadow(
    color: Colors.black38,
    spreadRadius: -8,
    offset: Offset(-5, -8),
    blurRadius: 12,
  ),
];
const List<BoxShadow> darkModePressedBoxShadow = [
  BoxShadow(
    color: Colors.white12,
    offset: Offset(5, 5),
    spreadRadius: -4,
    blurRadius: 10,
  ),
  BoxShadow(
    color: Colors.black38,
    spreadRadius: -8,
    offset: Offset(-5, -8),
    blurRadius: 12,
  ),
];

const List<BoxShadow> lightModeCalculationBoxShadow = [
  BoxShadow(
    color: Colors.white,
    offset: Offset(-5, -10),
    blurRadius: 15,
  ),
  BoxShadow(
    color: Colors.black38,
    offset: Offset(5, 5),
    blurRadius: 15,
  ),
];
const List<BoxShadow> darkModeCalculationBoxShadow = [
  BoxShadow(
    color: Colors.white24,
    offset: Offset(-7, -10),
    spreadRadius: -7,
    blurRadius: 10,
  ),
  BoxShadow(
    color: Colors.black,
    offset: Offset(5, 5),
    blurRadius: 15,
  ),
];

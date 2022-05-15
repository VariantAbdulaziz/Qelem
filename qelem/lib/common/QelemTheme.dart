import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AppPalette.dart';

class QelemTheme {
  static ThemeData qelemTheme = ThemeData(
    textTheme: GoogleFonts.robotoTextTheme(),
    primarySwatch: AppPalette.qelemPurple,
  );

  static TextStyle appBar = GoogleFonts.comfortaa(color: Colors.white);

  static TextStyle bottomNavSelected = GoogleFonts.comfortaa(color: Colors.white, fontSize: 13);
  static TextStyle bottomNavUnselected = GoogleFonts.comfortaa(color: Colors.grey, fontSize: 13);
}
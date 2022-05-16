import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_palette.dart';

class QelemTheme {
  static ThemeData qelemTheme = ThemeData(
    textTheme: GoogleFonts.comfortaaTextTheme(),
    primarySwatch: AppPalette.qelemPurple,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: const TextStyle(color: Colors.white),
      unselectedLabelStyle: TextStyle(color: Colors.white.withOpacity(0.75)),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(0.75),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: false,
      titleTextStyle:
          GoogleFonts.comfortaa(color: Colors.white, fontSize: 20.0),
      actionsIconTheme: IconThemeData(
        color: Colors.white.withOpacity(0.75),
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppPalette.qelemPurple,
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
    ),
  );
}

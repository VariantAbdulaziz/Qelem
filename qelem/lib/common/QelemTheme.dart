import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AppPalette.dart';

class QelemTheme {
  static ThemeData qelemTheme = ThemeData(
    textTheme: GoogleFonts.robotoTextTheme(),
    primarySwatch: AppPalette.qelemPurple,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: GoogleFonts.comfortaa(color: Colors.white, fontSize: 13),
      unselectedLabelStyle: GoogleFonts.comfortaa(color: Colors.grey, fontSize: 13),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
    ),
    appBarTheme: AppBarTheme(
        titleTextStyle: GoogleFonts.comfortaa(color: Colors.white, fontSize: 20.0)
    )
  );

}
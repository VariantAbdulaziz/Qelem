import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_palette.dart';

class QelemTheme {
  static ThemeData qelemTheme = ThemeData(
    textTheme: TextTheme(
        headline6: GoogleFonts.comfortaa(),
        subtitle2: GoogleFonts.comfortaa(color: Colors.black.withOpacity(0.6)),
        bodyText2: GoogleFonts.comfortaa(color: Colors.black87)),
    primarySwatch: AppPalette.qelemPurple,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle:
          GoogleFonts.comfortaa(color: Colors.white, fontSize: 13),
      unselectedLabelStyle:
          GoogleFonts.comfortaa(color: Colors.white.withOpacity(0.75), fontSize: 13),
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
    cardTheme: CardTheme(
      elevation: 0,
      margin: const EdgeInsets.fromLTRB(8, 8, 8, 8),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(color: Colors.black12, width: 1)),
    ),
    listTileTheme: const ListTileThemeData(
        contentPadding: EdgeInsets.all(0),
        horizontalTitleGap: 2,
        minVerticalPadding: 2),
    buttonTheme: ButtonThemeData(
      buttonColor: AppPalette.qelemPurple,
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
      ),
    ),
  );
}

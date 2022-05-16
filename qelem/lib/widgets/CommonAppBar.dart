import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar commonAppBar(String _title) {
  return AppBar(
      title: Text(
        _title,
        style: GoogleFonts.comfortaa(
            color: Colors.white),
      )
  );
}
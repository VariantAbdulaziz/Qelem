import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar homeAppBar(String _title) {
  return AppBar(
    title: Text(
      _title,
      style: GoogleFonts.comfortaa(
          color: Colors.white),
    ),
    actions: [
      // Navigate to the Search Screen
      IconButton(onPressed: () => {}, icon: const Icon(Icons.search))
    ],
  );
}
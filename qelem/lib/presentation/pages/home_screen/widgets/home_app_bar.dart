import 'package:flutter/material.dart';

AppBar homeAppBar(String _title) {
  return AppBar(
    title: Text(
      _title,
    ),
    actions: [
      IconButton(onPressed: () => {}, icon: const Icon(Icons.search))
    ],
  );
}
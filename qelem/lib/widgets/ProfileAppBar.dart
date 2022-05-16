import 'package:flutter/material.dart';

AppBar profileAppBar(String _title) {
  return AppBar(
    title: Text(
      _title,
    ),
    actions: [
      IconButton(onPressed: () => {}, icon: const Icon(Icons.logout))
    ],
  );
}
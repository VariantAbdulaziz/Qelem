import 'package:flutter/material.dart';
import 'package:qelem/common/QelemTheme.dart';

AppBar homeAppBar(String _title) {
  return AppBar(
    title: Text(
      _title,
      style: QelemTheme.appBarText,
    ),
    actions: [
      IconButton(onPressed: () => {}, icon: const Icon(Icons.search))
    ],
  );
}
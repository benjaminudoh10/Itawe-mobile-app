import 'package:flutter/material.dart';

AppBar savedAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.bookmark_border_outlined,
          size: 36.0,
          color: Color(0xffc7c7c7),
        ),
        SizedBox(width: 10.0),
        Text("Saved Items"),
      ],
    ),
  );
}
                          
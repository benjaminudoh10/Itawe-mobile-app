import 'package:flutter/material.dart';

List<Widget> buildStars(int number) {
  List<Widget> stars = [];

  int emptyStars = 5 - number;

  for (int i = 0; i < number; i++) {
    stars.add(Icon(
      Icons.star,
      color: Color(0xffffd233),
      size: 16.0,
    ));
  }

  for (int i = 0; i < emptyStars; i++) {
    stars.add(Icon(
      Icons.star_border_rounded,
      size: 16.0,
    ));
  }

  return stars;
}

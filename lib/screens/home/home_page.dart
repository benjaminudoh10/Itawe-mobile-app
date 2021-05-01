import 'package:flutter/material.dart';
import 'package:itawe/screens/home/widgets/newest_books.dart';
import 'package:itawe/screens/home/widgets/popular_books.dart';
import 'package:itawe/screens/home/widgets/search_box.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: [
            Search(),
            PopularBooks(),
            NewestBooks(),
          ],
        ),
      ),
    );
  }
}

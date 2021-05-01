import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Color(0xffffc41f),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.menu_book,
              size: 36.0,
              color: Color(0xfffdfdfd),
            ),
            Text(
              "Itawe",
              style: TextStyle(
                color: Color(0xfffdfdfd),
                fontSize: 36.0
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xfff5f5f5),
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: EdgeInsets.only(top: 5.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_outlined),
                hintText: "Search",
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        SizedBox(width: 10.0,),
        Icon(
          Icons.tune_outlined,
          size: 30.0,
          color: Color(0xff300f26),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:itawe/constants/assetPaths.dart';
import 'package:itawe/screens/stars.dart';

class SavedBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        padding: EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "4 items",
              style: TextStyle(
                fontSize: 16.0
              ),
            ),
            ...[
              _buildBook("book-1.png", "Stay with me", "Ayobami Adebayo", 4, 15),
              const Divider(thickness: 1.5,),
              _buildBook("book-2.png", "The Death of Vivek Oji", "Akwaeke Emezi", 3, 25.30),
              const Divider(thickness: 1.5,),
              _buildBook("book-1.png", "The Spider King's Daughter", "Chibundu Onuzo", 5, 11.09),
              const Divider(thickness: 1.5,),
              _buildBook("book-3.png", "My Thoughts in a Flash", "Amanda Speaks", 2, 123),
              const Divider(thickness: 1.5,),
              _buildBook("book-2.png", "The Death of Vivek Oji", "Akwaeke Emezi", 3, 25.30),
              const Divider(thickness: 1.5,),
              _buildBook("book-1.png", "The Spider King's Daughter", "Chibundu Onuzo", 5, 11.09),
            ]
          ],
        ),
      ),
    );
  }

  Widget _buildBook(String image, String title, String author, int stars, double price) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            getImagePath(image),
            width: 72.0,
            height: 105.0,
          ),
          const SizedBox(width: 15.0,),
          Flexible(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color(0xff06070d),
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10.0,),
                          Text(
                            author,
                            style: TextStyle(
                              color: Color(0x8806070d),
                              fontSize: 14.0
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.bookmark_border_outlined,
                      size: 26.0,
                    ),
                  ],
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: buildStars(stars),
                        ),
                        const SizedBox(height: 10.0,),
                        Text(
                          "\$$price",
                          style: TextStyle(
                            color: Color(0xff1947d2),
                            fontSize: 14.0
                          ),
                        ),
                      ],
                    ),
                    Material(
                      child: InkWell(
                        onTap: () {},
                        splashColor: Color(0xffffd233),
                        highlightColor: Color(0xffffd233),
                        borderRadius: BorderRadius.circular(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(color: Color(0xffffd233)),
                          ),
                          padding: EdgeInsets.all(5.0),
                          width: 88.0,
                          height: 35.0,
                          child: Center(
                            child: Text(
                              "Move to cart",
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Color(0xffffd233),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

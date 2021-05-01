import 'package:flutter/material.dart';
import 'package:itawe/constants/assetPaths.dart';

class NewestBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Newest",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff06070d),
                ),
              ),
              Icon(
                Icons.more_horiz,
              ),
            ],
          ),
          ...[
            _buildBook("book-1.png", "Stay with me", "Ayobami Adebayo", 4, 15),
            _buildBook("book-2.png", "The Death of Vivek Oji", "Akwaeke Emezi", 3, 25.30),
            _buildBook("book-1.png", "The Spider King's Daughter", "Chibundu Onuzo", 5, 11.09),
            _buildBook("book-3.png", "My Thoughts in a Flash", "Amanda Speaks", 2, 123),
          ]
        ],
      ),
    );
  }

  Widget _buildBook(String image, String title, String author, int stars, double price) {
    return Container(
      padding: EdgeInsets.only(top: 15.0),
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
            child: Row(
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
                      const SizedBox(height: 10.0,),
                      Row(
                        children: _buildStars(stars),
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
                ),
                Icon(
                  Icons.bookmark_border_outlined,
                  size: 26.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildStars(int number) {
    List<Widget> stars = [];

    int emptyStars = 5 - number;

    for (int i = 0; i < number; i++) {
      stars.add(
        Icon(
          Icons.star,
          color: Color(0xffffd233),
          size: 16.0,
        )
      );
    }

    for (int i = 0; i < emptyStars; i++) {
      stars.add(
        Icon(
          Icons.star_border_rounded,
          size: 16.0,
        )
      );
    }

    return stars;
  }
}
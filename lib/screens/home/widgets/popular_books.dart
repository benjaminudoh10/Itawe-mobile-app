import 'package:flutter/material.dart';
import 'package:itawe/constants/assetPaths.dart';

class PopularBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      padding: EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Books",
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
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _buildBookGroup("book-3.png", 15, "My thoughts in a flash", "Amanda Speaks"),
                _buildBookGroup("book-2.png", 25.00, "The Spider King's Daughter", "Chibundu Onuzo"),
                _buildBookGroup("book-1.png", 18.50, "Stay with me", "Abayomi Adebayo"),
                _buildBookGroup("book-3.png", 35, "The Death of Vivel Oji", "Chibundu Onuzo"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBookGroup(String image, double price, String title, String author) {
    return Container(
      width: 140.0,
      padding: EdgeInsets.only(
        top: 10.0,
        bottom: 10.0,
        right: 15.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            getImagePath(image),
            width: 140.0,
            height: 187.0,
          ),
          const SizedBox(height: 10.0,),
          Text(
            "\$$price",
            style: TextStyle(
              color: Color(0xff1947d2),
              fontSize: 12.0,
            ),
          ),
          const SizedBox(height: 10.0,),
          Text(
            "$title",
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color(0xff06070d),
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0,),
          Text(
            "$author",
            style: TextStyle(
              color: Color(0x8806070d),
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}

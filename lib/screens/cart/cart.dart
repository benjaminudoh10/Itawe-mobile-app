import 'package:flutter/material.dart';
import 'package:itawe/constants/assetPaths.dart';
import 'package:itawe/screens/stars.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              padding: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                "Check out",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xffffd233),
            ),
          ),
        ),
      ],
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
                  children: buildStars(stars),
                ),
                const SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "-",
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "4",
                          style: TextStyle(
                            color: Color(0xff1947d2),
                            fontSize: 18.0
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "+",
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 20.0,),
                        Icon(Icons.delete_outline, size: 18.0,)
                      ],
                    ),
                    Text(
                      "\$$price",
                      style: TextStyle(
                        color: Color(0xff1947d2),
                        fontSize: 14.0
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

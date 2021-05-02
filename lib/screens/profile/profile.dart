import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
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
              "Hi, Aderinsola Ben",
              style: TextStyle(
                fontSize: 20.0
              ),
            ),
            SizedBox(height: 25.0,),
            ...[
              _buildTile(Icons.person_outline, "My Profile"),
              const Divider(thickness: 1.5,),
              _buildTile(Icons.shopping_bag_outlined, "My Orders"),
              const Divider(thickness: 1.5,),
              _buildTile(Icons.place_outlined, "Address book"),
              const Divider(thickness: 1.5,),
              _buildTile(Icons.payment_rounded, "Payment Methods"),
              const Divider(thickness: 1.5,),
              _buildTile(Icons.contact_support_outlined, "Need help?"),
              const Divider(thickness: 1.5,),
              _buildTile(Icons.logout, "Sign out"),
            ]
          ],
        ),
      ),
    );
  }

  Widget _buildTile(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30.0,
            color: Color(0xffffd233),
          ),
          SizedBox(width: 10.0,),
          Text(
            text,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

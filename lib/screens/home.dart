import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itawe/controllers/homeController.dart';
import 'package:itawe/screens/appbars.dart';
import 'package:itawe/screens/cart/cart.dart';
import 'package:itawe/screens/home/home_page.dart';
import 'package:itawe/screens/profile/profile.dart';
import 'package:itawe/screens/saved/saved_books.dart';

class Home extends StatelessWidget {
  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      appBar: _getAppBar(_homeController.index.value),
        body: SafeArea(
          child: _getDisplayedWidget(_homeController.index.value),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Color(0xffffd233),
          unselectedItemColor: Color(0xffc7c7c7),
          type: BottomNavigationBarType.fixed,
          currentIndex: _homeController.index.value,
          onTap: _homeController.setIndex,
          items: [
            _buildBottomNavigationBarItem(icon: Icons.home_outlined, tooltip: "Home"),
            _buildBottomNavigationBarItem(icon: Icons.bookmark_border_outlined, tooltip: "Saved books"),
            _buildBottomNavigationBarItem(icon: Icons.shopping_cart_outlined, tooltip: "Cart"),
            _buildBottomNavigationBarItem(icon: Icons.person_outline, tooltip: "Profile"),
          ],
        ),
      ),
    );
  }

  Widget _getDisplayedWidget(int currentIndex) {
    if (currentIndex == 0) {
      return MainView();
    } else if (currentIndex == 1) {
      return SavedBooks();
    } else if (currentIndex == 2) {
      return Cart();
    } else if (currentIndex == 3) {
      return Profile();
    } else {
      return Container(
        color: Colors.grey,
      );
    }
  }

  _getAppBar(int currentIndex) {
    if (currentIndex == 0) {
      return null;
    } else if (currentIndex == 1) {
      return savedAppBar();
    } else if (currentIndex == 2) {
      return cartAppBar();
    } else if (currentIndex == 3) {
      return profileAppBar();
    }
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem({IconData icon, String tooltip}) {
    return BottomNavigationBarItem(
      activeIcon: Icon(
        icon,
        size: 36.0,
      ),
      icon: Icon(
        icon,
        size: 36.0,
      ),
      label: "",
      tooltip: tooltip
    );
  }
}

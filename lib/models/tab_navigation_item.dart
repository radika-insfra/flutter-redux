import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/about_page.dart';
import 'package:flutter_application_1/screens/home_screen.dart';
import 'package:flutter_application_1/screens/shop_screen.dart';

class TabNavigationItem {
  final String title;
  final IconData icon;
  final Widget page;

  // TabNavigationItem(this.title, this.icon, this.page);

  // static List<TabNavigationItem> get items => [
  //       TabNavigationItem(
  //         "Home",
  //         Icons.home,
  //         const MyHomeScreen(),
  //       ),
  //       TabNavigationItem("Home", Icons.home, const MyHomeScreen()),
  //       TabNavigationItem("Home", Icons.home, const MyHomeScreen())
  //     ];

  TabNavigationItem(
      {required this.title, required this.icon, required this.page});

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          title: "Home",
          icon: Icons.home,
          page: const MyHomeScreen(),
        ),
        TabNavigationItem(
          title: "Shop",
          icon: Icons.shop,
          page: const ShopScreen(),
        ),
        TabNavigationItem(
          title: "About",
          icon: Icons.info,
          page: const AboutScreen(),
        ),
      ];
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/tab_navigation_item.dart';

class BottomNavigationTabs extends StatefulWidget {
  const BottomNavigationTabs({Key? key}) : super(key: key);

  @override
  State<BottomNavigationTabs> createState() => _BottomNavigationTabsState();
}

class _BottomNavigationTabsState extends State<BottomNavigationTabs> {
  int _currentIndex = 0;

  void handleChangeIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          for (final tabItem in TabNavigationItem.items)
            createBottomNavigationBarItem(tabItem.title, tabItem.icon)
        ],
        currentIndex: _currentIndex,
        onTap: handleChangeIndex,
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: <Widget>[
          for (final tabItem in TabNavigationItem.items) tabItem.page
        ],
      ),
    );
  }
}

BottomNavigationBarItem createBottomNavigationBarItem(
    String titile, IconData icon) {
  return BottomNavigationBarItem(icon: Icon(icon), label: titile);
}

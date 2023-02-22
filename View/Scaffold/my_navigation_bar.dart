import 'package:flutter/material.dart';
import 'package:synag/View/Scaffold/provider_navigation_bar.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: (index) {
          setState(() {
            _selectIndex = index;
          });
         ProcessNavigationBar(context).screenIndex(index); 
        },
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey[400],
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(
                Icons.home_rounded,
                color: Colors.white,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined),
              activeIcon: Icon(
                Icons.explore,
                color: Colors.white,
              ),
              label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline),
              activeIcon: Icon(
                Icons.add_circle,
                color: Colors.white,
              ),
              label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.subscriptions_outlined),
              activeIcon: Icon(
                Icons.subscriptions,
                color: Colors.white,
              ),
              label: "Subscriptions"),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_library_outlined),
              activeIcon: Icon(
                Icons.video_library,
                color: Colors.white,
              ),
              label: "Library"),
        ]);
  }
}

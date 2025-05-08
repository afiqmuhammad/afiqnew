import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

// ignore: use_key_in_widget_constructors
class HomeScreen extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final iconList = <IconData>[
    Icons.dashboard,
    Icons.favorite,
    Icons.message,
    Icons.settings,
  ];

  final pages = [
    Center(
      child: Icon(Icons.dashboard_outlined, size: 200, color: Colors.blue),
    ),
    Center(child: Icon(Icons.favorite_border, size: 200, color: Colors.blue)),
    Center(child: Icon(Icons.message_outlined, size: 200, color: Colors.blue)),
    Center(child: Icon(Icons.settings_outlined, size: 200, color: Colors.blue)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Stack(
          children: [
            Text(
              'APLIKASI KITA',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 35,
                fontWeight: FontWeight.bold,
                foreground:
                    Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Colors.blue,
              ),
            ),
            Text(
              'APLIKASI KITA',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),

      body: pages[_currentIndex],
      // ignore: sized_box_for_whitespace
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: () {},
          // ignore: sort_child_properties_last
          child: Icon(Icons.add, size: 32),
          backgroundColor: Colors.blue,
          shape: CircleBorder(),
          elevation: 8,
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _currentIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) => setState(() => _currentIndex = index),
        backgroundColor: Colors.white,
        activeColor: Colors.blue,
        inactiveColor: Colors.black,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import file HomeScreen

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Bottom Nav Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(), // Gunakan HomeScreen dari file terpisah
    );
  }
}


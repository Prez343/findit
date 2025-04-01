// lib/main.dart
import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/album_screen.dart';

void main() {
  runApp(FindItApp());
}

class FindItApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Find It',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.blue,
            brightness: Brightness.dark,
        ).copyWith(secondary: Colors.blueAccent)
      ),
        // Add Custom Gradients Here Later
      // Define named routes
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/album': (context) => AlbumScreen(),
      },
    );
  }
}
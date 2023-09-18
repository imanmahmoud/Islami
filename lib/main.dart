import 'package:flutter/material.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      home: HomeScreen(),
      theme: MyTheme.lightTheme,
    );
  }
}

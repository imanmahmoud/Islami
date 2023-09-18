import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLight = Color(0xffB7935F);
  static Color blackColor = Color(0xFF242424);
  static Color whiteColor = Color(0xFFF8F8F8);

  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryLight,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: blackColor, fontSize: 30, fontWeight: FontWeight.w700),
          iconTheme: IconThemeData(color: blackColor)),
      textTheme: TextTheme(
          titleMedium: TextStyle(
              color: blackColor, fontSize: 25, fontWeight: FontWeight.w600),
          titleSmall: TextStyle(
              color: blackColor, fontSize: 25, fontWeight: FontWeight.w400)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: blackColor,
          unselectedIconTheme: IconThemeData(
            size: 35,
          ),
          selectedIconTheme: IconThemeData(size: 35)));
}

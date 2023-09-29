import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLight = Color(0xffB7935F);
  static Color primaryDark = Color(0xff141A2E);
  static Color blackColor = Color(0xFF242424);
  static Color yellowColor = Color(0xffFACC1D);
  static Color whiteColor = Color(0xFFF8F8F8);

  static ThemeData lightTheme = ThemeData(
      cardColor: whiteColor,
      iconTheme: IconThemeData(color: primaryLight, size: 40),
      primaryColor: primaryLight,
      textSelectionTheme: TextSelectionThemeData(selectionColor: primaryLight),
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
              color: blackColor, fontSize: 25, fontWeight: FontWeight.w400),
          bodySmall: TextStyle(
              color: blackColor, fontSize: 20, fontWeight: FontWeight.w400)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: blackColor,
          unselectedItemColor: whiteColor,
          unselectedIconTheme: IconThemeData(
            size: 35,
          ),
          selectedIconTheme: IconThemeData(size: 35)),
      cardTheme: CardTheme(
          color: whiteColor.withOpacity(0.8),
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      dividerColor: primaryLight,
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: whiteColor));
  static ThemeData darkTheme = ThemeData(
      cardColor: primaryDark,
      iconTheme: IconThemeData(color: yellowColor, size: 40),
      primaryColor: primaryDark,
      textSelectionTheme: TextSelectionThemeData(selectionColor: yellowColor),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
              color: yellowColor, fontSize: 30, fontWeight: FontWeight.w700),
          iconTheme: IconThemeData(color: whiteColor)),
      textTheme: TextTheme(
          titleMedium: TextStyle(
              color: whiteColor, fontSize: 25, fontWeight: FontWeight.w600),
          titleSmall: TextStyle(
              color: whiteColor, fontSize: 25, fontWeight: FontWeight.w400),
          bodySmall: TextStyle(
              color: whiteColor, fontSize: 20, fontWeight: FontWeight.w400)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: yellowColor,
          unselectedItemColor: whiteColor,
          unselectedIconTheme: IconThemeData(
            size: 35,
          ),
          selectedIconTheme: IconThemeData(size: 35)),
      cardTheme: CardTheme(
          color: primaryDark.withOpacity(0.8),
          elevation: 3,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      dividerColor: yellowColor,
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: primaryDark));
}

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/home/hadith/hadith_details_screen.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/home/quran/sura_details_screen.dart';
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
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        HadithDetailsScreen.routeName: (context) => HadithDetailsScreen(),
      },
      home: HomeScreen(),
      theme: MyTheme.lightTheme,
      darkTheme: MyTheme.darkTheme,
      themeMode: ThemeMode.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: [
        Locale('en'),
        Locale('ar'),
      ],
      locale: Locale('en'),
    );
  }
}

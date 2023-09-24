import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/home/hadith/hadith_tab.dart';
import 'package:islami/home/quran/quran_tab.dart';
import 'package:islami/home/radio/radio_tab.dart';
import 'package:islami/home/sebha/sebha_tab.dart';
import 'package:islami/home/settings/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
              title: Text(
                AppLocalizations.of(context)!.app_title,
          )),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage('assets/images/quran_icon.png')),
                      label: AppLocalizations.of(context)!.quran),
                  BottomNavigationBarItem(
                      icon: ImageIcon(
                          AssetImage('assets/images/hadith_icon.png')),
                      label: AppLocalizations.of(context)!.hadith),
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage('assets/images/sebha_icon.png')),
                      label: AppLocalizations.of(context)!.sebha),
                  BottomNavigationBarItem(
                      icon:
                          ImageIcon(AssetImage('assets/images/radio_icon.png')),
                      label: AppLocalizations.of(context)!.radio),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: AppLocalizations.of(context)!.settings)
                ]),
          ),
          body: tabs[selectedIndex],
        )
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab()
  ];
}

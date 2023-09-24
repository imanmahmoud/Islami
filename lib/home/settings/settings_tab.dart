import 'package:flutter/material.dart';
import 'package:islami/home/settings/language_bottom_sheet.dart';
import 'package:islami/home/settings/theme_bottom_sheet.dart';

class SettingsTab extends StatefulWidget {
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Language', style: Theme.of(context).textTheme.titleMedium),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('English',
                      style: Theme.of(context).textTheme.titleSmall),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text('Theme', style: Theme.of(context).textTheme.titleMedium),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Light', style: Theme.of(context).textTheme.titleSmall),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => LanguageBootomSheet());
  }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context, builder: (context) => ThemeBootomSheet());
  }
}

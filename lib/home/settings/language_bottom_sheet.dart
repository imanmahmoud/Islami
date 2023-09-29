import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

class LanguageBootomSheet extends StatefulWidget {
  @override
  State<LanguageBootomSheet> createState() => _LanguageBootomSheetState();
}

class _LanguageBootomSheetState extends State<LanguageBootomSheet> {
  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;
    var settingsProvider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () {
                settingsProvider.changeLocal('en');
              },
              child: settingsProvider.currentLocale == 'en'
                  ? getSelectedItem(local.english)
                  : unSelectedItem(local.english)),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changeLocal('ar');
              },
              child: settingsProvider.currentLocale == 'ar'
                  ? getSelectedItem(local.arabic)
                  : unSelectedItem(local.arabic))
        ],
      ),
    );
  }

  Widget getSelectedItem(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                color: Theme.of(context).textSelectionTheme.selectionColor)),
        Icon(
          Icons.check,
          color: Theme.of(context).textSelectionTheme.selectionColor,
          size: 30,
        )
      ],
    );
  }

  Widget unSelectedItem(String text) {
    return Row(
      children: [
        Text(text, style: Theme.of(context).textTheme.titleSmall),
      ],
    );
  }
}

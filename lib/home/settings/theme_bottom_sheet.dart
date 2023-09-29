import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

class ThemeBootomSheet extends StatefulWidget {
  @override
  State<ThemeBootomSheet> createState() => _ThemeBootomSheetState();
}

class _ThemeBootomSheetState extends State<ThemeBootomSheet> {
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
                settingsProvider.changeThemeMode(ThemeMode.light);
              },
              child: settingsProvider.isDark()
                  ? getUnselectedItem(local.light)
                  : getSelectedItem(local.light)),
          SizedBox(
            height: 15,
          ),
          InkWell(
              onTap: () {
                settingsProvider.changeThemeMode(ThemeMode.dark);
              },
              child: settingsProvider.isDark()
                  ? getSelectedItem(local.dark)
                  : getUnselectedItem(local.dark))
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

          ///color: Theme.of(context).textSelectionTheme.selectionColor,
          size: 30,
        )
      ],
    );
  }

  Widget getUnselectedItem(String text) {
    return Row(
      children: [
        Text(text, style: Theme.of(context).textTheme.titleSmall),
      ],
    );
  }
}

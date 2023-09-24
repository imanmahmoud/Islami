import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBootomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppLocalizations.of(context)!.light,
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color:
                          Theme.of(context).textSelectionTheme.selectionColor)),
              Icon(
                Icons.check,
                color: Theme.of(context).textSelectionTheme.selectionColor,
                size: 30,
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(AppLocalizations.of(context)!.dark,
              style: Theme.of(context).textTheme.titleSmall)
        ],
      ),
    );
  }
}

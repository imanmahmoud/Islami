import 'package:flutter/material.dart';
import 'package:islami/home/hadith/hadith.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

class HadithDetailsScreen extends StatelessWidget {
  static const routeName = 'Hadith details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadith;
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Stack(children: [
      Image.asset(
        settingsProvider.getBackgroundDark(),
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
            title: Text(
          args.title,
        )),
        body: Column(
          children: [
            Expanded(
              child: Card(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05,
                      vertical: MediaQuery.of(context).size.height * 0.06),
                  child: SingleChildScrollView(
                    child: Text(
                      args.content,
                      textDirection: TextDirection.rtl,
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  )),
            ),
          ],
        ),
      ),
    ]);
  }
}

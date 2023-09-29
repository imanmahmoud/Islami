import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/quran/sura_details_item.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const routeName = 'sura details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }

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
              args.name,
            )),
        body: verses.length == 0
            ? Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ))
            : Card(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: MediaQuery.of(context).size.height * 0.06),
          child: ListView.builder(
              itemBuilder: (context, index) {
                return SuraDetailsItem(
                    content: verses[index], index: index);
              },
              itemCount: verses.length),
        ),
      ),
    ]);
  }

  void loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    /*List<String>*/
    verses = fileContent.trim().split('\n');
    /*verses=lines;*/
    setState(() {});
  }
}

class SuraDetailsArgs {
  String name;
  int index;

  SuraDetailsArgs({required this.name, required this.index});
}

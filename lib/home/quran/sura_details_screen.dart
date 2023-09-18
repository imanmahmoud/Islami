import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/quran/sura_details_item.dart';
import 'package:islami/my_theme.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const routeName = 'sura details';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> lines = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (lines.isEmpty) {
      loadFile(args.index);
    }

    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        fit: BoxFit.fill,
        width: double.infinity,
        height: double.infinity,
      ),
      Scaffold(
        appBar: AppBar(
            title: Text(
          args.name,
        )),
        body: lines.length == 0
            ? Center(
                child: CircularProgressIndicator(
                color: Theme.of(context).primaryColor,
              ))
            : Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.06),
                decoration: BoxDecoration(
                    color: MyTheme.whiteColor,
                    borderRadius: BorderRadius.circular(24)),
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return SuraDetailsItem(
                          content: lines[index], index: index);
                    },
                    itemCount: lines.length),
              ),
      ),
    ]);
  }

  void loadFile(int index) async {
    String fileContent =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    /*List<String>*/
    lines = fileContent.split('\n');
    /*verses=lines;*/
    setState(() {});
  }
}

class SuraDetailsArgs {
  String name;
  int index;

  SuraDetailsArgs({required this.name, required this.index});
}

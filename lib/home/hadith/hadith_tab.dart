import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/hadith/hadith_name_item.dart';

import 'hadith.dart';

class HadithTab extends StatefulWidget {
  @override
  State<HadithTab> createState() => _HadithTabState();
}

class _HadithTabState extends State<HadithTab> {
  List<Hadith> allHadith = [];

  @override
  Widget build(BuildContext context) {
    if (allHadith.isEmpty) {
      loadFile();
    }
    return Column(
      children: [
        Expanded(flex: 1, child: Image.asset('assets/images/hadith_logo.png')),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Text(
          'Al-ahadith',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Expanded(
          flex: 2,
          child: allHadith.length == 0
              ? Center(
                  child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ))
              : ListView.separated(
                  itemBuilder: (context, index) => HadithNameItem(
                      hadith: Hadith(
                          title: allHadith[index].title,
                          content: allHadith[index].content)),
                  separatorBuilder: (context, index) => Divider(
                        color: Theme.of(context).primaryColor,
                        thickness: 1,
                        endIndent: 30,
                        indent: 30,
                      ),
                  itemCount: allHadith.length),
        )
      ],
    );
  }

  void loadFile() async {
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadithList = fileContent.trim().split('#');
    for (int i = 0; i < hadithList.length; i++) {
      List<String> hadithLines = hadithList[i].trim().split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      String content = hadithLines.join('\n');
      Hadith hadith = Hadith(title: title, content: content);
      allHadith.add(hadith);

      setState(() {});
    }
  }
}

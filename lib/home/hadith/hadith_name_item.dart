import 'package:flutter/material.dart';
import 'package:islami/home/hadith/hadith.dart';

import 'hadith_details_screen.dart';

class HadithNameItem extends StatelessWidget {
  Hadith hadith;

  HadithNameItem({required this.hadith});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadithDetailsScreen.routeName, arguments: hadith);
      },
      child: Text(
        hadith.title,
        style: Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islami/home/hadith/hadith.dart';

class HadithDetailsScreen extends StatelessWidget {
  static const routeName = 'Hadith details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadith;

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
                      style: Theme.of(context).textTheme.titleSmall,
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

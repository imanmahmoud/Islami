import 'package:flutter/material.dart';

class SuraDetailsItem extends StatelessWidget {
  String content;
  int index;

  SuraDetailsItem({required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$content {${index + 1}}',
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
    );
  }
}

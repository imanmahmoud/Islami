import 'package:flutter/material.dart';

class LanguageBootomSheet extends StatelessWidget {
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
              Text('English',
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
          Text('Arabic', style: Theme.of(context).textTheme.titleSmall)
        ],
      ),
    );
  }
}

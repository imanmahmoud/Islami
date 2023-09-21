import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/radio_logo.png'),
        SizedBox(
          height: 40,
        ),
        Text(
          'إذاعة القرآن الكريم',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('assets/images/back_icon.png'),
            Image.asset('assets/images/play_icon.png'),
            Image.asset('assets/images/next_icon.png'),
          ],
        )
      ],
    );
  }
}

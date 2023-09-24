import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int number = 0;
  double rotationAngle = 0;

  List<String> doaa = [
    "سبحان الله",
    "الحمد لله",
    "لا اله الا الله",
    "لا حول ولا قوة الا بالله"
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 50,
            ),
            Image.asset('assets/images/sebha_head.png'),
          ],
        ),
        GestureDetector(
            onTap: () {
              setState(() {
                rotationAngle += 45;
                number++;
                if ((number - 1) % 33 == 0 && number != 1) {
                  index++;
                  if (index == doaa.length) {
                    index = 0;
                  }
                }
              });
            },
            child: Transform.rotate(
              angle: rotationAngle * (-3.14159265359 / 180),
              // Convert degrees to radians
              child: Image.asset(
                'assets/images/sebha_body.png',
              ),
            )),
        SizedBox(
          height: 20,
        ),
        Text(
          'عدد التسبيحات',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Text('$number', style: Theme.of(context).textTheme.titleSmall),
          decoration: ShapeDecoration(
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              )),
          padding: EdgeInsets.all(22),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Text('${doaa[index]}',
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.center),
          decoration: ShapeDecoration(
              color: Theme.of(context).textSelectionTheme.selectionColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              )),
          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
        )
      ],
    );
  }
}

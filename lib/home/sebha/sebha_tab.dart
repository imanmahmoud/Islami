import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/settings_provider.dart';

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
    "الله اكبر",
    "لا اله الا الله",
    "لا حول ولا قوة الا بالله"
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);
    var size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          Stack(alignment: Alignment.topCenter, children: [
            Container(
                alignment: Alignment.topCenter,
                /*padding: EdgeInsets.symmetric(horizontal: size.width*),*/
                margin: EdgeInsets.symmetric(
                    vertical: size.height * 0.04,
                    horizontal: size.width * 0.41),
                /*margin: EdgeInsets.symmetric(horizontal:  size.width*0.41,vertical: size.height*0.02),*/
                child: Image.asset(settingsProvider.isDark()
                    ? 'assets/images/sebha_head_dark.png'
                    : 'assets/images/sebha_head.png')),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.13),
              /*margin: EdgeInsets.symmetric(horizontal: size.width*0.2,vertical: size.height*0.05 ),*/
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      rotationAngle += 20;
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
                    angle: rotationAngle,
                    // Convert degrees to radians
                    child: Image.asset(
                      settingsProvider.isDark()
                          ? 'assets/images/sebha_body_dark.png'
                          : 'assets/images/sebha_body.png',
                    ),
                  )),
            ),
          ]),
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
            child:
                Text('$number', style: Theme.of(context).textTheme.titleSmall),
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
      ),
    );
  }
}

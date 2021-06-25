import 'package:flutter/material.dart';
import 'package:urskill/Style/StyleApp.dart';

class MyMenuItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  MyMenuItem({this.title, this.iconData});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Icon(
            iconData,
            color: StyleApp.primary,
            size: 30,
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          title,
          style: TextStyle(
              fontFamily: StyleApp.fontNameLao, color: StyleApp.primary),
        )
      ],
    );
  }
}

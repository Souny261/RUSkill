import 'package:flutter/material.dart';
import 'package:urskill/Style/StyleApp.dart';

class MyTileText extends StatelessWidget {
  final String title;
  final String number;
  final String subtitile;
  MyTileText({this.number, this.subtitile, this.title});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title,
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: StyleApp.fontNameLao)),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                text: number,
              ),
              // TextSpan(
              //     text: " $subtitile",
              //     style: TextStyle(fontFamily: StyleApp.fontNameLao)),
            ],
          ),
        ),
      ],
    );
  }
}

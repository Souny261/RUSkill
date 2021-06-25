import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage("assets/Logo.png")),
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        color: Colors.redAccent,
      ),
    );
  }
}

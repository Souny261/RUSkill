import 'package:flutter/material.dart';
import 'package:urskill/Style/StyleApp.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controllerText;
  final IconData iconData;
  final String hintText;
  final bool obscureText;
  final IconButton actionText;
  final Function onSaveCallBack;
  final Function validatorCallBack;
  MyTextField(
      {this.controllerText,
      this.hintText,
      this.iconData,
      this.obscureText,
      this.actionText,
      this.onSaveCallBack,
      this.validatorCallBack});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Material(
        elevation: 2.0,
        shadowColor: StyleApp.primary,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: TextFormField(
          controller: controllerText,
          cursorColor: StyleApp.primary,
          obscureText: obscureText,
          validator: validatorCallBack,
          onSaved: onSaveCallBack,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: StyleApp.fontNameLao),
          decoration: InputDecoration(
              suffixIcon: actionText,
              hintText: hintText,
              errorStyle: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 15.0,
                fontFamily: StyleApp.fontNameLao,
              ),
              hintStyle: TextStyle(
                  fontFamily: StyleApp.fontNameLao,
                  fontWeight: FontWeight.bold),
              prefixIcon: Container(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  margin: const EdgeInsets.only(right: 8.0),
                  decoration: BoxDecoration(
                      color: StyleApp.primary,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      )),
                  child: Icon(
                    iconData,
                    color: StyleApp.background,
                    size: 20,
                  )),
              border: InputBorder.none,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
        ),
      ),
    );
  }
}

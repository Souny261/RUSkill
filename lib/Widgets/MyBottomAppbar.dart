import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:urskill/Style/StyleApp.dart';

class MyBottomAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        elevation: 0,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "ທ່ານຍັງບໍ່ໄດ້ລົງທະບຽນລົດ",
                  style: TextStyle(
                      fontFamily: StyleApp.fontNameLao,
                      fontSize: 15,
                      color: StyleApp.primary,
                      fontWeight: FontWeight.bold),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.all(0.0),
                child: Ink(
                  decoration: const BoxDecoration(
                    color: StyleApp.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: Container(
                    constraints: const BoxConstraints(
                        minWidth: 130.0,
                        minHeight: 50.0), // min sizes for Material buttons
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Text(
                          '+ ເພີ່ມລົດ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: StyleApp.fontNameLao,
                              color: Colors.white),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          FontAwesomeIcons.carAlt,
                          color: Colors.white,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
  }
}
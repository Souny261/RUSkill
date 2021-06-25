import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:urskill/Style/StyleApp.dart';

class MyDateTimeFiled extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final format = DateFormat("dd/MM/yyyy");
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Material(
        elevation: 2.0,
        shadowColor: StyleApp.primary,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        child: DateTimeField(
          format: format,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: StyleApp.fontNameLao),
          decoration: InputDecoration(
            hintText: "ວັນເດືອນປີເກີດ",
            hintStyle: TextStyle(
                fontFamily: StyleApp.fontNameLao, fontWeight: FontWeight.bold),
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
                  FontAwesomeIcons.calendarDay,
                  color: StyleApp.background,
                  size: 20,
                )),
            border: new UnderlineInputBorder(
                borderSide: new BorderSide(color: Colors.blue.shade200)),
          ),
          validator: (value) {
            if (value == null) {
              return "ວັນເດືອນປີເກີດ";
            }
            return null;
          },
          onShowPicker: (context, currentValue) {
            return showDatePicker(
                context: context,
                firstDate: DateTime(2010),
                initialDate: currentValue ?? DateTime.now(),
                lastDate: DateTime(2100));
          },
          onChanged: (DateTime val) {},
          onSaved: (value) {
            // date2 = DateFormat("yyyy-MM-dd").format(value);
          },
        ),
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:urskill/Style/StyleApp.dart';

class MyCarItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 4),
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, 4.0),
              blurRadius: 10.0,
            )
          ],
        ),
        child: Stack(
          children: <Widget>[
            Row(
              children: [
                Container(
                  height: 100,
                  width: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                    ),
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                          "https://s.isanook.com/au/0/ud/15/77967/lamborghinihuracansto6.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Lamborghini",
                        style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: StyleApp.primary),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.carAlt,
                              color: StyleApp.primary,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("ກຫ 9999",
                                style: TextStyle(
                                    fontFamily: StyleApp.fontNameLao,
                                    color: StyleApp.lightText,
                                    fontSize: 16))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),

            Positioned(
              bottom: 25,
              right: 0,
              child: Center(
                // child: Transform.rotate(
                //  angle: pi / -1,
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0)),
                    color: StyleApp.primary,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 15.0,
                        offset: Offset(2.0, 4.4),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Icon(
                      FontAwesomeIcons.angleRight,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            // )
          ],
        ),
      ),
    );
  }
}

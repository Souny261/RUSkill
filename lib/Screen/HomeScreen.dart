import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart';
import 'package:urskill/Style/StyleApp.dart';
import 'package:urskill/Widgets/MyAvatarImage.dart';
import 'package:urskill/Widgets/MyBottomAppbar.dart';
import 'package:urskill/Widgets/MyCarItem.dart';
import 'package:urskill/Widgets/MyMenuItem.dart';
import 'package:urskill/Widgets/MyTileText.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: StyleApp.background,
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: StyleApp.primary,
          elevation: 0,
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                FontAwesomeIcons.bars,
                size: 20,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }),
          title: Center(
              child: Text(
            "i-Claim",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Badge(
                position: BadgePosition.topEnd(top: 6, end: 1),
                animationType: BadgeAnimationType.slide,
                badgeContent: Text(
                  '3',
                  style: TextStyle(color: Colors.white),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Icon(
                    FontAwesomeIcons.solidBell,
                    size: 20,
                  ),
                ),
              ),
            )
          ],
        ),
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (OverscrollIndicatorNotification overscroll) {
            overscroll.disallowGlow();
            return true;
          },
          child: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                    color: StyleApp.primary),
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    MyAvatarImage(
                        imageUrl:
                            "https://i.pinimg.com/564x/30/16/ee/3016eef305fb1bce4c66fa6a03b20903.jpg"),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "ທ່ານ ສຸນີ ມະລີວັນ",
                      style: TextStyle(
                          fontFamily: StyleApp.fontNameLao,
                          fontSize: 18,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Expanded(child: SizedBox()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MyTileText(
                          title: "ຈຳນວນລົດ",
                          number: "0",
                          subtitile: "ຄັນ",
                        ),
                        MyTileText(
                          title: "ການເຄມ",
                          number: "0",
                          subtitile: "ຄັ້ງ",
                        ),
                        MyTileText(
                          title: "ປະກັນໄພ",
                          number: "0",
                          subtitile: "ສະບັບ",
                        ),
                      ],
                    ),
                    Expanded(child: SizedBox()),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.mapPin,
                      color: StyleApp.primary,
                      size: 18,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "ແຈ້ງເຫດ",
                      style: TextStyle(
                          fontFamily: StyleApp.fontNameLao,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: StyleApp.primary),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MyMenuItem(
                      iconData: FontAwesomeIcons.carCrash,
                      title: "ອຸປະຕິເຫັດ",
                    ),
                    MyMenuItem(
                      iconData: FontAwesomeIcons.tools,
                      title: "ລົດເພ",
                    ),
                    MyMenuItem(
                      iconData: FontAwesomeIcons.truckPickup,
                      title: "ລົດລາກ",
                    ),
                    MyMenuItem(
                      iconData: FontAwesomeIcons.ambulance,
                      title: "ກູ້ໄພ",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.carAlt,
                      color: StyleApp.primary,
                      size: 18,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "ລົດທີ່ລົງທະບຽນ",
                      style: TextStyle(
                          fontFamily: StyleApp.fontNameLao,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: StyleApp.primary),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [MyCarItem(), MyCarItem(), MyCarItem()],
              )
            ],
          ),
        ),
        bottomNavigationBar: MyBottomAppbar());
  }
}

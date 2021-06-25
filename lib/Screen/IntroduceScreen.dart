import 'package:flutter/material.dart';
import 'package:urskill/Routes/Route.dart';
import 'package:urskill/Style/ClipperPath.dart';
import 'package:urskill/Style/StyleApp.dart';
import 'package:urskill/Style/constants.dart';
import 'package:urskill/Widgets/Logo.dart';

class IntroduceScreen extends StatefulWidget {
  @override
  _IntroduceScreenState createState() => _IntroduceScreenState();
}

class _IntroduceScreenState extends State<IntroduceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: StyleApp.background,
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClassNew(),
            child: Container(
              color: StyleApp.nearlyBlueDart,
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.3,
            ),
          ),
          Column(
            children: [
              ClipPath(
                clipper: ClipPathClass(),
                child: Container(
                  // color: StyleApp.primary,
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          StyleApp.primary,
                          StyleApp.nearlyBlueLight,
                        ],
                        begin: const FractionalOffset(1.0, 1.0),
                        end: const FractionalOffset(1.8, 0.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),

                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 1.3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Logo(),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "ຍີນດີຕອນຮັບ",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: StyleApp.fontNameLao,
                            fontSize: 35),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(defaultPadding),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "     RUSkill",
                                style: TextStyle(
                                    color: Colors.yellow.shade800,
                                    fontFamily: StyleApp.fontNameLao,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              TextSpan(
                                text:
                                    " ເປັນແອັບພິເຄເຊີນການຮຽນການສອນແບບອອນໄລ ເພື່ອເສີມ, ພັດທະນາ ແລະ ສ້າງທັດສະໃໝ່ ໃຫ້ແກ່ຜູ້ຮຽນ.",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: StyleApp.fontNameLao,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: MaterialButton(
                  onPressed: () {
                    RouteApp.signInRoute(context);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: const EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: const FractionalOffset(0.0, 1.0),
                        end: const FractionalOffset(1.0, 1.0),
                        colors: <Color>[
                          StyleApp.primary,
                          StyleApp.nearlyBlueLight,
                        ],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: Container(
                      constraints: const BoxConstraints(
                          minWidth: 88.0,
                          minHeight: 50.0), // min sizes for Material buttons
                      alignment: Alignment.center,
                      child: const Text(
                        'ເລີ່ມໃຊ້ງານ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: StyleApp.fontNameLao,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
            ],
          ),
        ],
      ),
    );
  }
}

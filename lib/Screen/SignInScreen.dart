import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:urskill/Routes/Route.dart';
import 'package:urskill/Service/Provider/MainProvider.dart';
import 'package:urskill/Style/StyleApp.dart';
import 'package:urskill/Widgets/Logo.dart';
import 'package:urskill/Widgets/MyTextField.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final passwordControllerText = TextEditingController();
  final usernameControllerText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final showPass = Provider.of<MainProvider>(context);
    return Scaffold(
        backgroundColor: StyleApp.background,
        body: Stack(
          children: [
            SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(alignment: Alignment.center, child: Logo()),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "ເຂົ້າສູ່ລະບົບດ້ວຍບັນຊີຂອງທ່ານ",
                          style: TextStyle(
                              color: StyleApp.darkText,
                              fontFamily: StyleApp.fontNameLao,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 50,
                        ),

                        MyTextField(
                            controllerText: usernameControllerText,
                            hintText: "ຊື່ບັນຊີ",
                            iconData: FontAwesomeIcons.userAlt,
                            obscureText: false),

                        SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                            controllerText: passwordControllerText,
                            hintText: 'ລະຫັດຜ່ານ',
                            iconData: FontAwesomeIcons.lock,
                            actionText: IconButton(
                              onPressed: () {
                                showPass.showPassword(context: context);
                              },
                              icon: Icon(FontAwesomeIcons.eye),
                            ),
                            obscureText: showPass.showPass),

                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: MaterialButton(
                            onPressed: () {
                              RouteApp.homeRoute(context);
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80.0)),
                            padding: const EdgeInsets.all(0.0),
                            child: Ink(
                              decoration: const BoxDecoration(
                                color: StyleApp.primary,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                              child: Container(
                                constraints: const BoxConstraints(
                                    minWidth: 88.0,
                                    minHeight:
                                        50.0), // min sizes for Material buttons
                                alignment: Alignment.center,
                                child: const Text(
                                  'ເຂົ້າສູ່ລະບົບ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: StyleApp.fontNameLao,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Row(children: [
                            Expanded(
                              child: Container(
                                height: 1,
                                color: StyleApp.lightText,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, right: 8),
                              child: Text(
                                "ຫຼື ເຂົ້າສູ່ລະບົບ",
                                style: TextStyle(
                                    fontFamily: StyleApp.fontNameLao,
                                    fontSize: 16,
                                    color: StyleApp.lightText),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 1,
                                color: StyleApp.lightText,
                              ),
                            ),
                          ]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              MaterialButton(
                                onPressed: () {},
                                color: Colors.deepOrange[900],
                                textColor: Colors.white,
                                child: Icon(
                                  FontAwesomeIcons.google,
                                  size: 30,
                                ),
                                padding: EdgeInsets.all(16),
                                shape: CircleBorder(),
                              ),
                              MaterialButton(
                                onPressed: () {},
                                color: Colors.blue[900],
                                textColor: Colors.white,
                                child: Icon(
                                  FontAwesomeIcons.facebookF,
                                  size: 30,
                                ),
                                padding: EdgeInsets.all(16),
                                shape: CircleBorder(),
                              ),
                            ],
                          ),
                        ),
                        // Expanded(child: SizedBox()),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: 40,
                child: IconButton(
                    icon: Icon(
                      FontAwesomeIcons.angleLeft,
                      color: StyleApp.primary,
                      size: 35,
                    ),
                    onPressed: () => Navigator.pop(context)))
          ],
        ),
        bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            elevation: 0,
            color: Colors.transparent,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "ຖ້າຫາກຍັງບໍ່ໄດ້ລົງທະບຽນ?",
                    style: TextStyle(
                        fontFamily: StyleApp.fontNameLao, fontSize: 15),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  InkWell(
                    onTap: () {
                      RouteApp.signUpRoute(context);
                    },
                    child: Text(
                      "ລົງທະບຽນໄດ້ທີ່ນີ້",
                      style: TextStyle(
                          fontFamily: StyleApp.fontNameLao,
                          fontSize: 15,
                          color: StyleApp.primary,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )));
  }
}

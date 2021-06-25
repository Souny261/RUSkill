import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:urskill/Service/Provider/MainProvider.dart';
import 'package:urskill/Style/StyleApp.dart';
import 'package:urskill/Widgets/Logo.dart';
import 'package:urskill/Widgets/MyTextField.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // variable;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final passwordControllerText = TextEditingController();
  final usernameControllerText = TextEditingController();
  String fullname, usernsme, password, confirmPassword, tel, date2;

  @override
  Widget build(BuildContext context) {
    final showPass = Provider.of<MainProvider>(context);
    return Scaffold(
      backgroundColor: StyleApp.background,
      body: Stack(
        children: [
          Form(
            key: _formkey,
            child: SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Logo(),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "ສ້າງບັນຊີຂອງທ່ານ",
                          style: TextStyle(
                              color: StyleApp.darkerText,
                              fontFamily: StyleApp.fontNameLao,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        MyTextField(
                          // controllerText: usernameControllerText,
                          hintText: "ຊື່ຜູ້ໃຊ້",
                          iconData: FontAwesomeIcons.userShield,
                          obscureText: false,
                          validatorCallBack: (String value) {
                            if (value.isEmpty) {
                              return "ກະລຸນາປ້ອນ ຊື່ຜູ້ໃຊ້";
                            }
                            return null;
                          },
                          onSaveCallBack: (String val) {
                            fullname = val;
                          },
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                          controllerText: passwordControllerText,
                          hintText: 'ລະຫັດຜ່ານ',
                          iconData: FontAwesomeIcons.lock,
                          obscureText: showPass.showPass,
                          validatorCallBack: (String value) {
                            if (value.isEmpty) {
                              return "ກະລຸນາປ້ອນ ລະຫັດຜ່ານ";
                            }
                            return null;
                          },
                          onSaveCallBack: (String val) {
                            password = val;
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        MyTextField(
                            hintText: 'ຢຶນຍັນລະຫັດຜ່ານ',
                            validatorCallBack: (String value) {
                              if (value.isEmpty) {
                                return "ກະລຸນາປ້ອນ ການຢືນຢັນລະຫັດຜ່ານ";
                              } else if (value != passwordControllerText.text) {
                                return "ລະຫັດຜ່ານບໍ່ຕົງກັນ";
                              }
                              return null;
                            },
                            iconData: FontAwesomeIcons.lock,
                            actionText: IconButton(
                              onPressed: () {
                                showPass.showConfirmPassword(context: context);
                              },
                              icon: Icon(FontAwesomeIcons.eye),
                            ),
                            obscureText: showPass.showConfrimPass),

                        SizedBox(
                          height: 30,
                        ),

                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: MaterialButton(
                            onPressed: () {
                              if (_formkey.currentState.validate()) {
                                _formkey.currentState.save();

                                return;
                              } else {
                                print("UnSuccessfull");
                              }
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
                                  'ລົງທະບຽນ',
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
    );
  }
}

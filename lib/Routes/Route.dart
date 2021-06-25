import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:urskill/Screen/HomeScreen.dart';
import 'package:urskill/Screen/SignInScreen.dart';
import 'package:urskill/Screen/SignUpScreen.dart';

class RouteApp {
  static void signUpRoute(context) {
    Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.rightToLeft, child: SignUpScreen()));
  }

  static void signInRoute(context) {
    Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.rightToLeft, child: SignInScreen()));
  }

  static void homeRoute(context) {
    Navigator.push(
        context,
        PageTransition(
            type: PageTransitionType.rightToLeft, child: HomeScreen()));
  }
}

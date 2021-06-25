import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:urskill/Screen/IntroduceScreen.dart';
import 'package:urskill/Style/StyleApp.dart';
import 'Service/Provider/MainProvider.dart';
import 'Style/constants.dart';

FirebaseMessaging firebaseMessaging;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<MainProvider>(create: (_) => MainProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Upskill & Reskill',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bgColor,
        textTheme: (Theme.of(context).textTheme)
            .apply(bodyColor: darkerText, fontFamily: StyleApp.fontNameLao),
        // canvasColor: secondaryColor,
      ),
      home: IntroduceScreen(),
    );
  }
}

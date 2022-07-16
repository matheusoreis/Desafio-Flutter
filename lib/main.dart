import 'package:flutter/material.dart';
import './homepage.dart';
import 'color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      // darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  String copyright = 'Copyright © Empresa 2021 - 2022';
  String logo = './assets/img/logo.png';
  String imgApple = './assets/icons/apple.png';
  String imgFacebook = './assets/icons/facebook.png';
  String imgGoogle = './assets/icons/google.png';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(
        copyright: copyright,
        logo: logo,
        imgApple: imgApple,
        imgFacebook: imgFacebook,
        imgGoogle: imgGoogle,
      ),
    );
  }
}

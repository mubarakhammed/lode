import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:lode_app/screens/home.dart';
import 'package:lode_app/screens/login.dart';
import 'package:lode_app/screens/splash_screen.dart';
import 'package:lode_app/screens/welcome_page.dart';
import 'package:lode_app/widgets/nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Lode',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

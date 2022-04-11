import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lode_app/common/theme.dart';
import 'package:lode_app/screens/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Welcome())));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/logo64x64.png'),
                SizedBox(
                  width: 11,
                ),
                Text('lode',
                    style: TextStyle(
                        fontFamily: "Phag",
                        color: WHITE,
                        fontSize: 64,
                        fontWeight: FontWeight.w700))
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:lode_app/common/constants.dart';
import 'package:lode_app/common/theme.dart';
import 'package:lode_app/screens/login.dart';
import 'package:lode_app/screens/register.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: screenHeight(context) * 0.45,
              ),
              Image.asset(
                'assets/images/logoname.png',
                // height: 25,
                // width: 25,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(() => Login());
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: WHITE,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text('Login',
                          style: TextStyle(
                              color: PRIMARY_COLOR,
                              fontFamily: "Proximate",
                              fontSize: 18)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Get.to(() => Regsiter());
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xfff2f2f2))),
                    child: Center(
                      child: Text('Register',
                          style: TextStyle(
                              color: WHITE,
                              fontFamily: "Proximate",
                              fontSize: 18)),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:lode_app/common/button.dart';
import 'package:lode_app/common/constants.dart';
import 'package:lode_app/common/input.dart';
import 'package:lode_app/common/theme.dart';
import 'package:lode_app/screens/login.dart';

class Regsiter extends StatefulWidget {
  @override
  State<Regsiter> createState() => _RegsiterState();
}

class _RegsiterState extends State<Regsiter> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController usernameController = new TextEditingController();

  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: screenHeight(context) * 0.05),
          Center(
              child: Image.asset("assets/images/logoname.png",
                  height: 100, width: 100)),
          SizedBox(
            height: screenHeight(context) * 0.05,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: WHITE,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 48),
                    child: Text(
                      'Register',
                      style: TextStyle(
                          fontFamily: 'Proximate',
                          fontSize: 30,
                          color: PRIMARY_COLOR),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          InputMaterial(
                              inputText: "Email",
                              keyboardType: TextInputType.emailAddress,
                              controller: usernameController,
                              obscure: false,
                              color: WHITE),
                          SizedBox(
                            height: 20,
                          ),
                          InputMaterial(
                              inputText: "Username",
                              keyboardType: TextInputType.name,
                              controller: usernameController,
                              obscure: false,
                              color: WHITE),
                          SizedBox(
                            height: 20,
                          ),
                          InputMaterial(
                              inputText: "Password",
                              keyboardType: TextInputType.visiblePassword,
                              controller: passwordController,
                              obscure: false,
                              color: WHITE),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 33),
                    child: defaultButton(
                        onPressed: () {}, color: PRIMARY_COLOR, text: "Login"),
                  ),
                  SizedBox(
                    height: screenHeight(context) * 0.05,
                  ),
                  Center(
                      child: Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontFamily: "Proximate",
                      fontSize: 14,
                    ),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: InkWell(
                    onTap: () {
                      Get.to(() => Login());
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        fontFamily: "Proximate",
                        fontSize: 14,
                      ),
                    ),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

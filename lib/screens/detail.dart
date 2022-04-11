import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lode_app/common/button.dart';
import 'package:lode_app/common/constants.dart';
import 'package:lode_app/common/shared.dart';
import 'package:lode_app/common/theme.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              "assets/images/full2.png",
              fit: BoxFit.cover,
              scale: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: WHITE,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 450.0),
            child: Expanded(
                child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: WHITE,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 0),
                    child: Text(
                      'Yoruba Boys',
                      style: TextStyle(fontFamily: "Proximate", fontSize: 24),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Container(
                          width: screenWidth(context) * 0.5,
                          child: Text(
                              'Complete set of Agba, Buba, Trousers and Cap for Men. Suitable for Owambe Events. It can be worn without the Agbada.',
                              style: TextStyle(
                                  fontFamily: "Mont",
                                  fontSize: 12,
                                  color: Color(0XFF4C5059))),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: Column(
                          children: [
                            Container(
                              height: 40,
                              width: 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Color(0xFFEAEAEA)),
                              child: Center(
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                      color: PRIMARY_COLOR, fontSize: 20),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "1",
                              style:
                                  TextStyle(fontFamily: "Mont", color: BLACK),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 40,
                              width: 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Color(0xFFEAEAEA)),
                              child: Center(
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                      color: PRIMARY_COLOR, fontSize: 30),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color(0xFFEAEAEA)),
                          child: Center(
                            child: Text(
                              "M",
                              style:
                                  TextStyle(color: PRIMARY_COLOR, fontSize: 15),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: PRIMARY_COLOR),
                          child: Center(
                            child: Text(
                              "L",
                              style: TextStyle(color: WHITE, fontSize: 15),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color(0xFFEAEAEA)),
                          child: Center(
                            child: Text(
                              "XL",
                              style:
                                  TextStyle(color: PRIMARY_COLOR, fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("NGN34,098",
                            style: TextStyle(
                                fontFamily: "Proximate", fontSize: 22)),
                        Container(
                          height: 60,
                          width: 200,
                          decoration: BoxDecoration(
                              color: PRIMARY_COLOR,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: Text(
                              'Add to Cart',
                              style: TextStyle(
                                  fontFamily: "Proximate",
                                  fontSize: 18,
                                  color: WHITE),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}

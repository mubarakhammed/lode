import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:lode_app/common/constants.dart';
import 'package:lode_app/common/shared.dart';
import 'package:lode_app/common/theme.dart';
import 'package:lode_app/screens/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 34, vertical: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome, Mubarak",
                      style: TextStyle(fontFamily: "Proximate", fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      style: TextStyle(
                          color: GREY,
                          fontFamily: 'Proximate',
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      controller: searchController,
                      decoration: InputDecoration(
                        fillColor: GREY,
                        filled: false,
                        prefixIcon: Icon(
                          Icons.search,
                          size: 20,
                        ),
                        hintText: 'Search',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: Color(0xfff4f4f4), width: .5)),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        width: 90,
                        height: 50,
                        // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                        decoration: BoxDecoration(
                            color: Color(0xfff4f4f4),
                            boxShadow: customShadow,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text('Sanyan',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Proximate",
                                  color: BLACK,
                                  fontSize: 14)),
                        )),
                    Container(
                        width: 90,
                        height: 50,
                        // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                        decoration: BoxDecoration(
                            color: Color(0xfff4f4f4),
                            boxShadow: customShadow,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text('Etu',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Proximate",
                                  color: BLACK,
                                  fontSize: 14)),
                        )),
                    Container(
                        width: 90,
                        height: 50,
                        // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                        decoration: BoxDecoration(
                            color: Color(0xfff4f4f4),
                            boxShadow: customShadow,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Text('Alaari',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Proximate",
                                  color: BLACK,
                                  fontSize: 14)),
                        )),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: Text("What's Trending",
                    style: TextStyle(
                      fontFamily: "Proximate",
                      fontSize: 16,
                      color: Color(0XFF222222),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 240,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        Get.to(() => Detail());
                      },
                      child: Container(
                        height: 80,
                        width: 130,
                        decoration: BoxDecoration(
                            border: Border.all(color: GREY, width: 1),
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle),
                        margin: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                child: Image.asset(
                                  "assets/images/queniee.png",
                                  fit: BoxFit.fill,
                                  height: 150,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Quinee',
                                    style: TextStyle(
                                        fontFamily: "Mont",
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  Text("NGN 34,000",
                                      style: TextStyle(
                                          fontFamily: "Mont",
                                          fontSize: 15,
                                          color: Colors.green))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 34),
                child: Text("New Collections",
                    style: TextStyle(
                      fontFamily: "Proximate",
                      fontSize: 16,
                      color: Color(0XFF222222),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 240,
                  child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      height: 80,
                      width: 125,
                      decoration: BoxDecoration(
                          border: Border.all(color: GREY, width: 1),
                          borderRadius: BorderRadius.circular(10),
                          shape: BoxShape.rectangle),
                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              child: Image.asset("assets/images/yoruba.png",
                                  fit: BoxFit.fill, height: 150),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Quinee',
                                  style: TextStyle(
                                      fontFamily: "Mont",
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal),
                                ),
                                Text("NGN 34,000",
                                    style: TextStyle(
                                        fontFamily: "Mont",
                                        fontSize: 15,
                                        color: Colors.green))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34),
                child: Container(
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0XFF2F316D),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Gele and Gown',
                              style: TextStyle(
                                  fontFamily: 'Proximate',
                                  color: WHITE,
                                  fontSize: 14),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'BIG SALE',
                              style: TextStyle(
                                  fontFamily: 'Proximate',
                                  color: WHITE,
                                  fontSize: 30),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: screenWidth(context) * 0.4,
                              child: Text(
                                '30% off on all our sale, this season',
                                style: TextStyle(
                                    fontFamily: 'Proximate',
                                    color: WHITE,
                                    fontSize: 16),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Image.asset(
                          'assets/images/discount.png',
                          width: 130,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 34),
                child: Text("For your next Owambe ",
                    style: TextStyle(
                      fontFamily: "Proximate",
                      fontSize: 16,
                      color: Color(0XFF222222),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lode_app/common/button.dart';
import 'package:lode_app/common/shared.dart';
import 'package:lode_app/common/theme.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back_ios),
                ),
                Text(
                  'Cart',
                  style: TextStyle(fontFamily: 'Proximate', fontSize: 18),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                )
              ],
            ),
          ),
          cartlist(context,
              image: 'assets/images/queniee.png',
              title: 'Oleku',
              amount: 'NGN 34,900',
              size: 'L',
              quantity: '2'),
          cartlist(context,
              image: 'assets/images/yoruba.png',
              title: 'Toko Taya',
              amount: 'NGN 70,900',
              size: 'XL',
              quantity: '1'),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
                height: 65,
                width: double.infinity,
                decoration: BoxDecoration(
                    boxShadow: lightcustomShadow,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Price',
                            style: TextStyle(
                              fontFamily: "Proximate",
                              fontSize: 16,
                            )),
                        Text('100,679',
                            style: TextStyle(
                              fontFamily: "Proximate",
                              fontSize: 21,
                            ))
                      ],
                    ),
                  ),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: defaultButton(
                onPressed: () {}, color: PRIMARY_COLOR, text: 'Go to Shipping'),
          )
        ],
      ),
    ));
  }
}

Widget cartlist(BuildContext context, {image, title, amount, size, quantity}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                Image.asset(
                  image,
                  height: 150,
                  width: 150,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontFamily: 'Proximate',
                          fontSize: 14,
                          color: Color(0xFF6E7179)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(amount,
                        style: TextStyle(
                            fontFamily: 'Proximate',
                            fontSize: 24,
                            color: Color(0xFF6E7179))),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
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
                              size,
                              style: TextStyle(color: WHITE, fontSize: 15),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 40,
                          width: 30,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color(0xff2E6A50)),
                          child: Center(
                            child: Text(
                              quantity,
                              style: TextStyle(color: WHITE, fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Divider(
            color: BLACK,
            thickness: 1,
          )
        ],
      ),
    ),
  );
}

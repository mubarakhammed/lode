import 'package:flutter/material.dart';
import 'package:lode_app/common/theme.dart';

Widget defaultButton({onPressed, text, color}) {
  return Container(
    height: 54,
    margin: const EdgeInsets.symmetric(
      vertical: 16.0,
    ),
    child: ButtonTheme(
      child: TextButton(
        onPressed: onPressed,
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              color: WHITE,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: 'Proximate'),
        )),
      ),
    ),
    decoration: BoxDecoration(
      color: color ?? PRIMARY_COLOR,
      borderRadius: BorderRadius.circular(10),
    ),
  );
}

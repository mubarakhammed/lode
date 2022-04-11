import 'package:flutter/material.dart';
import 'package:lode_app/common/theme.dart';

class InputMaterial extends StatelessWidget {
  final String inputText;

  final TextInputType keyboardType;

  final TextEditingController controller;
  final Color color;

  final bool obscure;
  // final Icon surfixIcon;
  // final Color surfixIconColor;
  InputMaterial(
      {required this.inputText,
      required this.keyboardType,
      required this.controller,
      //  required this.surfixIcon,
      required this.obscure,
      //  required this.surfixIconColor,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: TextFormField(
        style: TextStyle(
            color: Colors.black, fontFamily: 'Proximate', fontSize: 10),
        controller: controller,
        obscureText: obscure,
        decoration: InputDecoration(
          fillColor: WHITE,
          filled: false,
          // suffixIcon: surfixIcon,
          // suffixIconColor: surfixIconColor,
          hintText: inputText,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Color(0xffc4c4c4), width: 2)),
        ),
        keyboardType: keyboardType,
      ),
    );
  }
}

import 'package:e_parcel/colors.dart';
import 'package:flutter/material.dart';

inputDecoration(String label) {
  return InputDecoration(
    hintText: label,
    hintStyle: TextStyle(color: label_color, fontSize: 16),
    contentPadding: EdgeInsets.symmetric(horizontal: 17, vertical: 17),
    border: OutlineInputBorder(
        borderSide: BorderSide(
      color: Color.fromARGB(1, 216, 216, 216),
    )),
  );
}

containerDecoration() {
  return ShapeDecoration(
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    shadows: [
      BoxShadow(
        color: Color(0x1E000000),
        blurRadius: 10,
        offset: Offset(-1, 1),
        spreadRadius: 0,
      )
    ],
  );
}

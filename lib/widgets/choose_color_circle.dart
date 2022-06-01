import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget ChooseColorCircle({
  required Color color,
  bool isChoose = false,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: CircleAvatar(
      radius: 22,
      backgroundColor:
          isChoose ? const Color(0xff909090) : const Color(0xffF0F0F0),
      child: CircleAvatar(
        radius: 16,
        backgroundColor: color,
      ),
    ),
  );
}

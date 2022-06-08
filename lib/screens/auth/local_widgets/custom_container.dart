import 'package:ecomm_app/config/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CustomContainerWidget({required List<Widget> children}) {
  return Padding(
    padding: const EdgeInsets.only(right: 20),
    child: Container(
      padding: const EdgeInsets.only(top: 30, bottom: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(15), bottomRight: Radius.circular(15)),
        color: white,
        boxShadow: [
          BoxShadow(
            color: shadow,
            blurRadius: 30,
            spreadRadius: 3,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, children: children),
    ),
  );
}

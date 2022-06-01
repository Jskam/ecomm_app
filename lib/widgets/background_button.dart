import 'package:ecomm_app/config/app_colors.dart';
import 'package:ecomm_app/utils/app_text.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget BackgroundButton({
  String? text,
  IconData? icon,
  double? iconSize,
  double radius = 8,
  double? width,
  double? height,
  double textSize = 22,
  Color color = const Color(0xff242424),
}) {
  return SizedBox(
    width: width,
    height: height,
    child: ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(color),
      ),
      child: icon == null
          ? AppText(
              size: textSize,
              text: text!,
              color: white,
              weight: FontWeight.w600,
            )
          : Icon(icon, size: iconSize, color: primaryText),
    ),
  );
}

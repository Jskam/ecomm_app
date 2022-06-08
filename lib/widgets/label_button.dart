import 'package:ecomm_app/config/app_colors.dart';
import 'package:ecomm_app/utils/app_text.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget LabelButton({
  String? label,
  IconData? icon,
  double labelSize = 22,
  Color? background,
}) {
  return InkWell(
    child: label != null
        ? AppText(
            size: labelSize,
            text: label,
            weight: FontWeight.w600,
          )
        : Material(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: background,
            child: Icon(icon, color: black, size: 30)),
  );
}

import 'package:ecomm_app/config/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget AppText({
  FontWeight weight = FontWeight.normal,
  Color color = primaryText,
  required double size,
  required String text,
  int maxLines = 0,
  bool overflow = false,
  bool lineThrough = false,
  bool alignCenter = false,
  double interline = 1.25,
  String fontFamily = 'Nunito Sans',
}) {
  return Text(
    text,
    textAlign: alignCenter == true ? TextAlign.center : null,
    maxLines: maxLines == 0 ? null : maxLines,
    overflow: overflow == true ? TextOverflow.fade : null,
    style: TextStyle(
      height: interline,
      color: color,
      fontSize: size,
      fontFamily: fontFamily,
      fontWeight: weight,
      decoration: lineThrough ? TextDecoration.lineThrough : null,
    ),
  );
}

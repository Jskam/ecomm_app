import 'package:ecomm_app/config/app_colors.dart';
import 'package:ecomm_app/utils/app_text.dart';
import 'package:flutter/material.dart';

Widget WelcomeLabelsWidget({String bold = '', String light = ''}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        light.isNotEmpty
            ? AppText(size: 34, text: light, color: secondaryText)
            : SizedBox.shrink(),
        bold.isNotEmpty
            ? AppText(
                size: 30,
                text: bold,
                weight: FontWeight.bold,
              )
            : SizedBox.shrink(),
      ],
    ),
  );
}

import 'package:ecomm_app/config/app_colors.dart';
import 'package:ecomm_app/utils/app_text.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget WelcomeLabelsWidget({String bold = '', String light = ''}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        light.isNotEmpty
            ? AppText(size: 34, text: light, color: secondaryText)
            : const SizedBox.shrink(),
        bold.isNotEmpty
            ? AppText(
                size: 30,
                text: bold,
                weight: FontWeight.bold,
              )
            : const SizedBox.shrink(),
      ],
    ),
  );
}

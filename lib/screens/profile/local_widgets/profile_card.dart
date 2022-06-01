import 'package:ecomm_app/config/app_colors.dart';
import 'package:ecomm_app/utils/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget ProfileCardWidget({
  required String label,
  required String subLabel,
}) {
  return Container(
    padding: const EdgeInsets.all(16),
    margin: EdgeInsets.symmetric(vertical: 8),
    decoration: BoxDecoration(
      color: white,
      boxShadow: [
        BoxShadow(
          color: shadow,
          blurRadius: 26,
          spreadRadius: 0,
          offset: const Offset(0, 7),
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              size: 22,
              text: label,
              weight: FontWeight.bold,
            ),
            const SizedBox(height: 7),
            AppText(
              size: 18,
              text: subLabel,
              color: secondaryText,
              overflow: true,
            ),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: SvgPicture.asset('assets/svg/right.svg', width: 26),
        ),
      ],
    ),
  );
}

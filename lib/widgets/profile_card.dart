import 'package:ecomm_app/config/app_colors.dart';
import 'package:ecomm_app/utils/topography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: non_constant_identifier_names
Widget ProfileCardWidget({
  required String label,
  required String subLabel,
}) {
  return Container(
    padding: const EdgeInsets.all(16),
    margin: const EdgeInsets.symmetric(vertical: 8),
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
            Text(label, style: Topography().upperBodyText()),
            const SizedBox(height: 7),
            Text(subLabel, style: Topography().descriptionText()),
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

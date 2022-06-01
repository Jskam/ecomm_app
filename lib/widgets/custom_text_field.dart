import 'package:ecomm_app/utils/app_text.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
Widget CustomTextField({
  required String label,
  double labelSize = 18,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(size: labelSize, text: label),
        const TextField(),
      ],
    ),
  );
}

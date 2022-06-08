import 'package:ecomm_app/config/app_colors.dart';
import 'package:flutter/material.dart';

class Topography {
  TextStyle bodyText({FontWeight fw = FontWeight.normal}) {
    return TextStyle(
      color: primaryText,
      fontSize: 16,
      fontWeight: fw,
    );
  }

  TextStyle bodyGrayText({FontWeight fw = FontWeight.normal}) {
    return TextStyle(
      color: secondaryText,
      fontSize: 16,
      fontWeight: fw,
    );
  }

  TextStyle descriptionText() {
    return const TextStyle(
      color: Color(0xff606060),
      fontSize: 16,
      height: 1.5,
    );
  }

  TextStyle largeText() {
    return const TextStyle(
      color: primaryText,
      fontSize: 34,
    );
  }

  TextStyle labelText() {
    return const TextStyle(
      fontWeight: FontWeight.w500,
      fontFamily: 'Gelasio',
      color: primaryText,
      fontSize: 24,
    );
  }

  TextStyle upperBodyText() {
    return const TextStyle(
      color: primaryText,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    );
  }
}

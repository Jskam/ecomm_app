import 'package:ecomm_app/config/app_colors.dart';
import 'package:ecomm_app/utils/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scroll_app_bar/scroll_app_bar.dart';

// ignore: non_constant_identifier_names
PreferredSizeWidget CustomAppBar({
 required ScrollController controller,
 String? leadingSvg,
 String? actionSvg,
 String? subTitle,
 required String title,

}) {
  return ScrollAppBar(
    backgroundColor: white,
    centerTitle: true,
    elevation: 0,
    controller: controller,
    leading: leadingSvg!=null?TextButton(
      onPressed: () {},
      child: SvgPicture.asset(leadingSvg, width: 24),
    ):null,
    actions: [
      actionSvg!=null?TextButton(
        onPressed: () {},
        child: SvgPicture.asset(actionSvg, width: 24),
      ):SizedBox.shrink(),
    ],
    title: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        subTitle!=null?AppText(
          size: 18,
          text: subTitle,
          color: secondaryText,
        ):SizedBox.shrink(),
        AppText(
          size: 22,
          text: title,
          color: primaryText,
          fontFamily: 'Gelasio',
          weight: FontWeight.w700,
        ),
      ],
    ),
  );
}

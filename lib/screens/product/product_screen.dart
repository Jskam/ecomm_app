import 'package:ecomm_app/config/app_colors.dart';
import 'package:ecomm_app/utils/app_text.dart';
import 'package:ecomm_app/widgets/background_button.dart';
import 'package:ecomm_app/widgets/choose_color_circle.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * .60,
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: _ProductImageWidget(),
                  ),
                ),
                const _ProductInfoWidget(),
              ],
            ),
          ),
          const _ProductBackButtonWidget(),
          const _ProductChooseColorWidget(),
        ],
      ),
    );
  }
}

class _ProductBackButtonWidget extends StatelessWidget {
  const _ProductBackButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      top: 40,
      child: Container(
        child: IconButton(
          onPressed: () {},
          iconSize: 42,
          alignment: Alignment.center,
          icon: const Icon(
            Icons.keyboard_arrow_left,
            color: primaryText,
          ),
        ),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: shadow,
              blurRadius: 40,
              spreadRadius: 0,
              offset: const Offset(0, 4),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProductInfoWidget extends StatelessWidget {
  const _ProductInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            size: 24,
            text: 'Extra Light Lamp',
            fontFamily: 'Gelasio',
            weight: FontWeight.w500,
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              AppText(
                size: 34,
                text: '\$ 50',
                weight: FontWeight.w600,
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(Icons.star, color: yellow),
              const SizedBox(width: 10),
              AppText(size: 20, text: '4.5', weight: FontWeight.w600),
              const SizedBox(width: 20),
              AppText(size: 18, text: '(50 reviews)', color: secondaryText),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            child: AppText(
              color: const Color(0xff606060),
              interline: 1.5,
              size: 16,
              text:
                  'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home. ',
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackgroundButton(
                icon: Icons.bookmark_outline,
                width: 60,
                height: 55,
                color: Color(0xffF0F0F0),
                iconSize: 30,
              ),
              BackgroundButton(
                text: 'Add to cart',
                width: MediaQuery.of(context).size.width - 40 - 80,
                height: 55,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _ProductChooseColorWidget extends StatelessWidget {
  const _ProductChooseColorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      top: 150,
      child: Container(
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: shadow,
              blurRadius: 40,
              spreadRadius: 0,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // TODO: ListView.builder ///////////////////////////////////////
            ChooseColorCircle(color: Colors.deepOrange, isChoose: true),
            ChooseColorCircle(color: Colors.green),
            ChooseColorCircle(color: Colors.lightBlue),
          ],
        ),
      ),
    );
  }
}

class _ProductImageWidget extends StatelessWidget {
  const _ProductImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 0,
      top: 0,
      child: Container(
        child: Image.asset('assets/images/image.png', fit: BoxFit.cover),
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
          ),
        ),
      ),
    );
  }
}

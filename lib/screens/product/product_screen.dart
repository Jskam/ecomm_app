import 'package:ecomm_app/config/app_colors.dart';
import 'package:ecomm_app/utils/topography.dart';
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
              children: const [
                _ProductImageWidget(),
                _ProductInfoWidget(),
              ],
            ),
          ),
          const _ProductBackButtonWidget(),
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
          iconSize: 38,
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
          Text('Extra Light Lamp', style: Topography().labelText()),
          const SizedBox(height: 5),
          Text('\$ 50', style: Topography().largeText()),
          const SizedBox(height: 5),
          Row(
            children: [
              const Icon(Icons.star, color: yellow),
              const SizedBox(width: 10),
              Text('4.5', style: Topography().upperBodyText()),
              const SizedBox(width: 20),
              Text('(50 reviews)', style: Topography().descriptionText()),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            'Minimal Stand is made of by natural wood. The design that is very simple and minimal. This is truly one of the best furnitures in any family for now. With 3 different colors, you can easily select the best match for your home. ',
            style: Topography().descriptionText(),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BackgroundButton(
                icon: Icons.bookmark_outline,
                width: 60,
                height: 55,
                color: lightGray,
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
    return Container(
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
         
          ChooseColorCircle(color: Colors.deepOrange, isChoose: true),
          ChooseColorCircle(color: Colors.green),
          ChooseColorCircle(color: Colors.lightBlue),
        ],
      ),
    );
  }
}

class _ProductImageWidget extends StatelessWidget {
  const _ProductImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .60,
      child: Stack(
        children: [
          const Positioned(
            left: 20,
            bottom: 0,
            child: _ProductChooseColorWidget(),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Positioned(
              right: 0,
              bottom: 0,
              top: 0,
              child: Container(
                child:
                    Image.asset('assets/images/image.png', fit: BoxFit.cover),
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

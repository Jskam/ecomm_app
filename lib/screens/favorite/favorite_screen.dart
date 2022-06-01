import 'package:ecomm_app/config/app_colors.dart';
import 'package:ecomm_app/utils/app_text.dart';
import 'package:ecomm_app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        controller: controller,
        title: 'Favorites',
        leadingSvg: 'assets/svg/search.svg',
        actionSvg: 'assets/svg/cart.svg',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: ListView.separated(
            controller: controller,
            itemCount: 4,
            shrinkWrap: true,
            itemBuilder: (context, index) => const _FavoriteCardWidget(),
            separatorBuilder: (context, index) => const _DividerWidget(),
          ),
        ),
      ),
    );
  }
}

class _DividerWidget extends StatelessWidget {
  const _DividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Divider(
        height: 2,
        color: Color(0xffF0F0F0),
      ),
    );
  }
}

class _FavoriteCardWidget extends StatelessWidget {
  const _FavoriteCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 110,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 110,
                height: 110,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/image.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 6),
                  AppText(
                    size: 20,
                    text: 'Coffee Table',
                    color: secondaryText,
                    weight: FontWeight.w600,
                  ),
                  const SizedBox(height: 3),
                  AppText(
                    size: 22,
                    text: '\$ 50.00',
                    color: primaryText,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {},
                  child: SvgPicture.asset('assets/svg/close.svg', width: 30)),
              TextButton(
                  onPressed: () {},
                  child: SvgPicture.asset('assets/svg/toCart.svg', width: 30)),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:ecomm_app/widgets/custom_appbar.dart';
import 'package:ecomm_app/widgets/divider.dart';
import 'package:ecomm_app/widgets/product_card.dart';
import 'package:flutter/material.dart';

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller,
              itemCount: 14,
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  const ProductCardWidget(isOnCart: false),
              separatorBuilder: (context, index) => const DividerWidget(),
            ),
          ),
        ),
      ),
    );
  }
}

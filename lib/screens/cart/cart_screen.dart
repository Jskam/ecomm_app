import 'package:ecomm_app/widgets/custom_appbar.dart';
import 'package:ecomm_app/widgets/divider.dart';
import 'package:ecomm_app/widgets/product_card.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        controller: controller,
        title: 'My cart',
        leadingSvg: 'assets/svg/left.svg',
        leading: () => Navigator.pop(context),
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
                  const ProductCardWidget(isOnCart: true),
              separatorBuilder: (context, index) => const DividerWidget(),
            ),
          ),
        ),
      ),
    );
  }
}

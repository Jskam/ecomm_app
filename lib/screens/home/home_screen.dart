import 'package:ecomm_app/config/app_colors.dart';
import 'package:ecomm_app/navigation.dart';
import 'package:ecomm_app/utils/topography.dart';
import 'package:ecomm_app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();
    return Scaffold(
      appBar: CustomAppBar(
          controller: controller,
          title: 'BEAUTIFUL',
          subTitle: 'Make home',
          leadingSvg: 'assets/svg/search.svg',
          actionSvg: 'assets/svg/cart.svg',
          action: () =>
              Navigator.pushNamed(context, MainNavigationRouteNames.cart)),
      backgroundColor: white,
      body: SingleChildScrollView(
        controller: controller,
        child: SafeArea(
          child: Column(
            children: const [
              SizedBox(height: 20),
              _CategoryListWidget(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: _ProductGridWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductGridWidget extends StatelessWidget {
  const _ProductGridWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 12,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: primaryText,
            ),
          );
        },
      ),
    );
  }
}

class _CategoryListWidget extends StatelessWidget {
  const _CategoryListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 80,
      child: ListView.builder(
        itemCount: 12,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: index == 0 ? const EdgeInsets.only(left: 10) : null,
            width: 80,
            child: Column(
              children: [
                Container(
                  width: 55,
                  height: 55,
                  child: const Icon(
                    Icons.star_rounded,
                    size: 44,
                    color: Color(0xff909090),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xfff5f5f5),
                  ),
                ),
                const SizedBox(height: 3),
                Text('Category', style: Topography().bodyText())
              ],
            ),
          );
        },
      ),
    );
  }
}

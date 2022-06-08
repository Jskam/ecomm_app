import 'package:ecomm_app/config/app_colors.dart';
import 'package:ecomm_app/utils/topography.dart';
import 'package:ecomm_app/widgets/label_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({Key? key, required this.isOnCart}) : super(key: key);

  final bool isOnCart;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Coffee Table',
                        style: Topography().bodyGrayText(fw: FontWeight.w600),
                      ),
                      const SizedBox(height: 3),
                      Text('\$ 50.00', style: Topography().upperBodyText()),
                    ],
                  ),
                  isOnCart
                      ? Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            LabelButton(icon: Icons.add, background: lightGray),
                            const SizedBox(width: 6),
                            Text('01', style: Topography().bodyText()),
                            const SizedBox(width: 6),
                            LabelButton(
                                icon: Icons.remove, background: lightGray),
                          ],
                        )
                      : const SizedBox.shrink(),
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
              !isOnCart
                  ? TextButton(
                      onPressed: () {},
                      child:
                          SvgPicture.asset('assets/svg/toCart.svg', width: 30))
                  : const SizedBox.shrink(),
            ],
          ),
        ],
      ),
    );
  }
}

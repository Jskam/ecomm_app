import 'package:ecomm_app/config/app_colors.dart';
import 'package:ecomm_app/screens/profile/local_widgets/profile_card.dart';
import 'package:ecomm_app/utils/app_text.dart';
import 'package:ecomm_app/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = ScrollController();
    return Scaffold(
      backgroundColor: white,
      appBar: CustomAppBar(
        controller: controller,
        title: 'Profile',
        leadingSvg: 'assets/svg/search.svg',
        actionSvg: 'assets/svg/exit.svg',
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('assets/images/image.png'),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        size: 24,
                        text: 'Bruno Pham',
                        weight: FontWeight.bold,
                      ),
                      AppText(
                        size: 20,
                        text: 'bruno203@gmail.com',
                        color: secondaryText,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 30),
              ProfileCardWidget(
                label: 'My orders',
                subLabel: 'Already have 10 orders',
              ),
              ProfileCardWidget(
                label: 'Shipping Addresses',
                subLabel: '03 Addresses',
              ),
              ProfileCardWidget(
                label: 'Payment Method',
                subLabel: 'You have 2 cards',
              ),
              ProfileCardWidget(
                label: 'My reviews',
                subLabel: 'Reviews for 5 items',
              ),
              ProfileCardWidget(
                label: 'Setting',
                subLabel: 'Notification, Password, FAQ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

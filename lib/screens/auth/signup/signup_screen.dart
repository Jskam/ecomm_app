import 'package:ecomm_app/config/app_colors.dart';
import 'package:ecomm_app/screens/auth/local_widgets/custom_container.dart';
import 'package:ecomm_app/screens/auth/local_widgets/logo_widget.dart';
import 'package:ecomm_app/screens/auth/local_widgets/welcome_labels_widget.dart';
import 'package:ecomm_app/widgets/background_button.dart';
import 'package:ecomm_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const LogoWidget(),
              const SizedBox(height: 30),
              WelcomeLabelsWidget(bold: 'WELCOME'),
              const SizedBox(height: 30),
              const _LoginContainerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginContainerWidget extends StatelessWidget {
  const _LoginContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(children: [
      CustomTextField(label: 'Name'),
      const SizedBox(height: 15),
      CustomTextField(label: 'Email'),
      const SizedBox(height: 15),
      CustomTextField(label: 'Password'),
      const SizedBox(height: 15),
      CustomTextField(label: 'Confirm Password'),
      const SizedBox(height: 30),
      BackgroundButton(text: 'SIGN UP'),
      const SizedBox(height: 20),
      RichText(
        text: const TextSpan(
          text: 'Already have account? ',
          style: TextStyle(color: secondaryText, fontSize: 18),
          children: [
            TextSpan(
              text: 'SIGN IN',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: primaryText,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}

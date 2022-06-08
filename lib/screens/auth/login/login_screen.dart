import 'package:ecomm_app/config/app_colors.dart';
import 'package:ecomm_app/screens/auth/local_widgets/custom_container.dart';
import 'package:ecomm_app/screens/auth/local_widgets/logo_widget.dart';
import 'package:ecomm_app/screens/auth/local_widgets/welcome_labels_widget.dart';
import 'package:ecomm_app/widgets/background_button.dart';
import 'package:ecomm_app/widgets/custom_text_field.dart';
import 'package:ecomm_app/widgets/label_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              WelcomeLabelsWidget(light: 'Hello!', bold: 'WELCOME BACK'),
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
      CustomTextField(label: 'Email'),
      const SizedBox(height: 20),
      CustomTextField(label: 'Password'),
      const SizedBox(height: 25),
      LabelButton(label: 'Forgot Password'),
      const SizedBox(height: 25),
      BackgroundButton(text: 'Log in'),
      const SizedBox(height: 25),
      LabelButton(label: 'SIGN UP'),
    ]);
  }
}

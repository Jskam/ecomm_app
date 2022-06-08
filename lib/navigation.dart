import 'package:ecomm_app/screens/auth/login/login_screen.dart';
import 'package:ecomm_app/screens/bottom_navigation.dart';
import 'package:ecomm_app/screens/cart/cart_screen.dart';
import 'package:ecomm_app/screens/product/product_screen.dart';
import 'package:flutter/material.dart';

abstract class MainNavigationRouteNames {
  static const loaderWidget = '/';
  static const auth = '/auth';
  static const mainScreen = '/main';
  static const productDetails = '/main/product';
  static const cart = '/main/cart';
}

class MainNavigation {
  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteNames.auth: (_) => const LoginScreen(),
    MainNavigationRouteNames.mainScreen: (_) => const BottomNavigationWidget(),
    MainNavigationRouteNames.productDetails: (_) => const ProductScreen(),
    MainNavigationRouteNames.cart: (_) => const CartScreen(),
  };
 


  static void resetNavigation(BuildContext context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
        MainNavigationRouteNames.loaderWidget, (route) => false);
  }
}
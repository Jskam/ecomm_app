import 'package:ecomm_app/screens/auth/login/login_screen.dart';
import 'package:ecomm_app/screens/bottom_navigation.dart';
import 'package:ecomm_app/screens/product/product_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Nunito Sans'),
      home: const BottomNavigationWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

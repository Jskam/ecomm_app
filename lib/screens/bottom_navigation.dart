import 'package:ecomm_app/config/app_colors.dart';
import 'package:ecomm_app/screens/favorite/favorite_screen.dart';
import 'package:ecomm_app/screens/home/home_screen.dart';
import 'package:ecomm_app/screens/product/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);
  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _selectedTab = 0;

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  Color getColor(int index) {
    if (_selectedTab == index) {
      return primaryText;
    } else {
      return secondaryText;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedTab,
        children: [
          HomeScreen(),
          const FavoriteScreen(),
          const ProductScreen(),
          HomeScreen(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              spreadRadius: 0,
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            currentIndex: _selectedTab,
            onTap: onSelectTab,
            iconSize: 30,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svg/home.svg',
                  height: 26,
                  color: getColor(0),
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svg/bookmark.svg',
                  height: 26,
                  color: getColor(1),
                ),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svg/bell.svg',
                  height: 26,
                  color: getColor(2),
                ),
                label: 'Notification',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/svg/person.svg',
                  height: 26,
                  color: getColor(3),
                ),
                label: 'Person',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

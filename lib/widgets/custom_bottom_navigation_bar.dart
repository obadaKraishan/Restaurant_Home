import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:line_icons/line_icons.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      icons: [
        LineIcons.home,
        LineIcons.book,
        LineIcons.shoppingBag,
        LineIcons.phone,
      ],
      activeIndex: currentIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.softEdge,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      onTap: onTap,
      activeColor: Colors.white,
      inactiveColor: Colors.white.withOpacity(0.6),
      backgroundColor: Color(0xFFfc7b28),
    );
  }
}

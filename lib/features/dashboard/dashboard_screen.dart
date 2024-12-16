import 'package:flutter/material.dart';
import 'package:furniture/core/constant/app_images.dart';
import 'package:furniture/design/utils/widgets/custom_svg.dart';
import 'package:furniture/export.dart';
import 'package:furniture/features/dashboard/category/screens/category_screen.dart';
import 'package:furniture/features/dashboard/profile/profile_screen.dart';

import '../../core/constant/app_colors.dart';
import '../../core/constant/strings.dart';
import 'cart/cart_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectIndex = 0;

  final List<Widget> _screens = [HomeScreen(), CategoryScreen(), CartScreen(), ProfileScreen()];

  void onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectIndex],
      bottomNavigationBar: CustomBottomNav(
        currentIndex: _selectIndex,
        onTap: onItemTapped,
      ),
    );
  }
}

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  const CustomBottomNav({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(),
      child: BottomNavigationBar(
        // showSelectedLabels: true,
        // showUnselectedLabels: true,
        unselectedFontSize: 14,
        selectedFontSize: 14,
        currentIndex: currentIndex,
        onTap: onTap,
        backgroundColor: AppColors.kGrey300,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.kWhiteColor,
        unselectedItemColor: AppColors.kSecondaryColor,
        items: [
          buildBottomNavigationBarItem(index: 0, image: AppIcons.icHome, label: AppLabels.home),
          buildBottomNavigationBarItem(index: 1, image: AppIcons.icCategory, label: AppLabels.category),
          buildBottomNavigationBarItem(index: 2, image: AppIcons.icCart, label: AppLabels.cart),
          buildBottomNavigationBarItem(index: 3, image: AppIcons.icProfile, label: AppLabels.profile),
        ],
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem({
    required String image,
    required String label,
    required int index,
  }) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4, top: 6),
        child: CustomSvg(
          imgUrl: image,
          color: currentIndex == index ? AppColors.kWhiteColor : AppColors.kSecondaryColor,
        ),
      ),
      label: label,
    );
  }
}

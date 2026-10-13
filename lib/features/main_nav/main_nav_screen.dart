import 'package:flutter/material.dart';
import 'package:proyek_praktikum_2026/core/theme/app_colors.dart';
import 'package:proyek_praktikum_2026/core/theme/app_text_style.dart';
import 'package:proyek_praktikum_2026/features/home/home_screen.dart';
import 'package:proyek_praktikum_2026/features/profile/profile_screen.dart';

class MainNavScreen extends StatefulWidget {
  const MainNavScreen({super.key});

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {
  int selectedTab = 0;

  List<Widget> pages = [HomeScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.transparent,
      body: IndexedStack(index: selectedTab, children: pages),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 65,
          decoration: BoxDecoration(color: AppColors.bluePrimary700),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 128, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _bottomNavItem(
                  icon: Icons.home,
                  text: 'Home',
                  isSelected: selectedTab == 0,
                  onTap: () {
                    setState(() {
                      selectedTab = 0;
                    });
                  },
                ),
                _bottomNavItem(
                  icon: Icons.person,
                  text: 'Profile',
                  isSelected: selectedTab == 1,
                  onTap: () {
                    setState(() {
                      selectedTab = 1;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _bottomNavItem({
    required IconData icon,
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: () {
        onTap.call();
      },
      child: Column(
        children: [
          Icon(icon, color: isSelected ? AppColors.white : AppColors.white70),
          const SizedBox(height: 4),
          Text(text, style: AppTextStyle.textM.white.semiBold),
        ],
      ),
    );
  }
}

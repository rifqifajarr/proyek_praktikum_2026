import 'package:flutter/material.dart';
import 'package:proyek_praktikum_2026/core/theme/app_colors.dart';

class MainNavScreen extends StatefulWidget {
  const MainNavScreen({super.key});

  @override
  State<MainNavScreen> createState() => _MainNavScreenState();
}

class _MainNavScreenState extends State<MainNavScreen> {
  // TO DO LIST
  // TODO: 1. Create an int state for selectedPage
  // TODO: 2. Create a List<Widget> for available pages
  // TODO: 3. Create a custom widget for bottom nav item
  // TODO: 4. Handle onTap

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.transparent,
      body: IndexedStack(),
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
                  isSelected: false,
                  onTap: () {},
                ),
                _bottomNavItem(
                  icon: Icons.person,
                  text: 'Profile',
                  isSelected: false,
                  onTap: () {},
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
    return SizedBox();
  }
}

import 'package:flutter/material.dart';
import 'package:proyek_praktikum_2026/core/theme/app_colors.dart';
import 'package:proyek_praktikum_2026/core/theme/app_text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: AppTextStyle.headingM.bold),
        backgroundColor: AppColors.bluePrimary200,
        centerTitle: true,
      ),
      body: Center(
        child: Text('This Is ProfileScreen', style: AppTextStyle.textL),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:proyek_praktikum_2026/core/theme/app_colors.dart';
import 'package:proyek_praktikum_2026/core/theme/app_text_style.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  final String desc;

  const DetailScreen({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: AppTextStyle.headingM.bold),
        backgroundColor: AppColors.bluePrimary200,
        centerTitle: true,
      ),
      body: Center(child: Text(desc, style: AppTextStyle.textL)),
    );
  }
}

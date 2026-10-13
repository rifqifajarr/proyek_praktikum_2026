import 'package:flutter/material.dart';

/// A custom class to provide custom color schemes.
/// ```dart
/// Text(
///   '...',
///   style: AppTextStyle.textS.black.bold,
/// ),
/// ```
class AppTextStyle {
  static const textS = TextStyle(
    fontSize: 12,
    height: 1.3,
    fontWeight: FontWeight.w400,
  );

  static const textM = TextStyle(
    fontSize: 14,
    height: 1.4,
    fontWeight: FontWeight.w400,
  );

  static const textL = TextStyle(
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w400,
  );

  static const headingS = TextStyle(
    fontSize: 18,
    height: 1.55,
    fontWeight: FontWeight.w400,
  );

  static const headingM = TextStyle(
    fontSize: 20,
    height: 1.6,
    fontWeight: FontWeight.w400,
  );

  static const headingL = TextStyle(
    fontSize: 24,
    height: 1.66,
    fontWeight: FontWeight.w400,
  );
}

extension Weight on TextStyle {
  TextStyle get medium => apply(fontWeightDelta: 1);

  TextStyle get semiBold => apply(fontWeightDelta: 2);

  TextStyle get bold => apply(fontWeightDelta: 3);

  TextStyle get extraBold => apply(fontWeightDelta: 4);
}

extension Coloring on TextStyle {
  TextStyle get white => apply(color: Colors.white);

  TextStyle get black => apply(color: Colors.black);
}

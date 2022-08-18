import 'dart:ui';

import 'package:walpapers_app/presentation/style/theme_mode.dart';

import 'app_colors.dart';

class CustomColorSet {
  final Color primary;
  final Color text;
  final Color background;
  final Color white;

  CustomColorSet._({
    required this.primary,
    required this.text,
    required this.background,
    required this.white,
  });

  factory CustomColorSet._create(CustomThemeMode mode) {
    final isLight = mode.isLight;

    const primary = AppColors.primary;
    const white = AppColors.white;
    final text = isLight ? AppColors.text : AppColors.white;
    final background = isLight ? AppColors.white : AppColors.primary;

    return CustomColorSet._(
      primary: primary,
      white: white,
      text: text,
      background: background,
    );
  }

  static CustomColorSet createOrUpdate(CustomThemeMode mode) {
    return CustomColorSet._create(mode);
  }
}

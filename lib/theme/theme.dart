import 'package:flutter/material.dart';
import 'package:medical_store_app/consts/app_colors.dart';
import 'package:medical_store_app/theme/widgets_theme/text_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: AppTextTheme.lightTextTheme,
    scaffoldBackgroundColor: AppColors.primaryColorLigGreen,
  );

  static ThemeData darkTextTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.primaryColorLigGreen,
  );
}

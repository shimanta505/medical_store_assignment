import 'package:flutter/material.dart';
import 'package:medical_store_app/consts/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.primaryColorLigGreen,
  );

  static ThemeData darkTextTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.primaryColorLigGreen,
  );
}

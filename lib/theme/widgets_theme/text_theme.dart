import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 36.sp,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      fontSize: 16.sp,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    titleMedium: TextStyle(
      fontSize: 16.sp,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w400,
    ),
  );
}

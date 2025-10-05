import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 36.sp,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      fontSize: 22.sp,
      fontFamily: "Roboto",
      fontWeight: FontWeight.w600,
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
    titleSmall: TextStyle(
      fontSize: 14.sp,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w400,
    ),
    bodyLarge: TextStyle(
      fontSize: 18.sp,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.normal,
    ),
    bodyMedium: TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeight.w400,
      fontFamily: 'Roboto',
      fontStyle: FontStyle.normal,
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_store_app/theme/theme.dart';
import 'package:medical_store_app/utils/app_binding.dart';
import 'package:medical_store_app/widgets/custom_bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      child: CustomBottomNavbar(),
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Medical store',
          theme: AppTheme.lightTheme,
          initialBinding: AppBinding(),
          home: child,
        );
      },
    );
  }
}

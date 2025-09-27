import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_store_app/consts/app_sizes.dart';
import 'package:medical_store_app/consts/app_texts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        padding: EdgeInsets.all(AppSizes.size16),
        children: [
          30.verticalSpace,
          Text(
            AppTexts.loginHeaderTxt,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          15.verticalSpace,
          Text(
            AppTexts.loginSubtitleTxt,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          20.verticalSpace,
          Text("Name", style: Theme.of(context).textTheme.titleLarge),
          TextFormField(
            decoration: InputDecoration(labelText: "Selina Faisal"),
          ),
        ],
      ),
    );
  }
}

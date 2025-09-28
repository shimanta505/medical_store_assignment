import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:medical_store_app/consts/app_sizes.dart';
import 'package:medical_store_app/screens/authentication/login/common_controller.dart';
import 'package:medical_store_app/widgets/custom_button.dart';
import 'package:medical_store_app/widgets/custom_input_field.dart';

import '../../../consts/app_assets.dart';
import '../../../consts/app_colors.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  CommonController commonController = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.fromBackgroundPng),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent),
        body: FormBuilder(
          key: commonController.signInFormKey,
          child: ListView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(AppSizes.size16),
            children: [
              30.verticalSpace,
              Text(
                "Hey,\nwelcome back !!",
                style: context.theme.textTheme.bodyMedium!.copyWith(
                  fontSize: 35.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              15.verticalSpace,
              Text(
                "Log in to manage your health, connect with professionals, and access all your services in one place.",
                style: context.theme.textTheme.bodyMedium!.copyWith(
                  fontSize: 15.sp,
                  height: 1.5,
                  fontWeight: FontWeight.w400,
                ),
              ),
              20.verticalSpace,
              CustomInputField(
                showBg: false,
                showBorder: true,
                padding: 0,
                title: "Mail",
                fieldTag: 'mail',
                hintText: 'Selina@gmail.com',
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                    errorText: "Please enter your  email",
                  ),
                  FormBuilderValidators.email(
                    errorText: "Please enter valid email",
                  ),
                ]),
              ),

              CustomInputField(
                showBg: false,
                // initialValue: '12345678',
                showBorder: true,
                padding: 0,

                title: "Password",
                fieldTag: 'password',
                hintText: '*******',
                isPasswordObx: true,
                isPasswordShow: RxBool(true),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.required(
                    errorText: "At least 8 characters long password need",
                  ),

                  FormBuilderValidators.minLength(
                    8,
                    errorText: 'At least 8 characters long',
                  ),
                  (value) {
                    if (!RegExp(r'[A-Z]').hasMatch(value ?? '')) {
                      return 'At least one uppercase letter';
                    }
                    return null;
                  },
                  (value) {
                    if (!RegExp(r'[a-z]').hasMatch(value ?? '')) {
                      return 'At least one lowercase letter';
                    }
                    return null;
                  },
                  (value) {
                    if (!RegExp(r'[0-9]').hasMatch(value ?? '')) {
                      return 'At least one number';
                    }
                    return null;
                  },
                  (value) {
                    if (!RegExp(r'[!@#\$&*~]').hasMatch(value ?? '')) {
                      return 'At least one special character';
                    }
                    return null;
                  },
                ]),
              ),
              70.verticalSpace,
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "Already have an account? -",
                  style: context.theme.textTheme.bodyMedium!.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.secondTextColor,
                  ),
                  children: [
                    TextSpan(
                      text: "Log In",
                      style: context.theme.textTheme.bodyMedium!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondTextColor,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.primaryColorLigGreen,
                        decorationThickness: 2,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.back();
                        },
                    ),
                  ],
                ),
              ),
              20.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.screenMarginHorizontally * 1.2,
                ),
                child: CustomButton(
                  child: Text(
                    "Log In",
                    style: context.theme.textTheme.bodyMedium!.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

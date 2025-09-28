import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get/get.dart';
import 'package:medical_store_app/consts/app_assets.dart';
import 'package:medical_store_app/consts/app_colors.dart';
import 'package:medical_store_app/screens/authentication/login/common_controller.dart';

import '../../../consts/app_sizes.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_input_field.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    CommonController commonController = Get.put(CommonController());

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
          key: commonController.signUpFormKey,
          child: Obx(() {
            return ListView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.screenMarginHorizontally + 10,
              ),

              children: [
                40.verticalSpace,
                Text(
                  "Lets Get Stated",
                  style: context.theme.textTheme.bodyMedium!.copyWith(
                    fontSize: 35.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                10.verticalSpace,
                Text(
                  textAlign: TextAlign.start,
                  "Join our app – Your all-in-one healthcare partner.",
                  style: context.theme.textTheme.bodyMedium!.copyWith(
                    fontSize: 15.sp,
                    height: 1.5,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                30.verticalSpace,
                CustomInputField(
                  showBg: false,
                  showBorder: true,
                  padding: 0,

                  // initialValue: 'Seller',
                  title: "Name",
                  fieldTag: 'name',
                  hintText: 'Enter your name',
                  isPasswordShow: RxBool(false),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(
                      errorText: 'User name is required',
                    ),

                    FormBuilderValidators.minLength(
                      2,
                      errorText: "Name must be at least 2 characters",
                    ),
                    FormBuilderValidators.match(
                      RegExp(r'^[a-zA-Z]+$'),
                      errorText:
                          'Name may only contain letters and single spaces',
                    ),
                  ]),
                ),
                CustomInputField(
                  showBg: false,
                  // initialValue: 'seller@gmail.com',
                  showBorder: true,
                  padding: 0,

                  title: "Email",
                  fieldTag: 'email',
                  hintText: 'example@gmail.com',
                  isPasswordShow: RxBool(false),
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
                15.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.screenMarginHorizontally * 1.2,
                  ),
                  child: CustomButton(
                    isLoading: commonController
                        .isEmailVerificationOtpSendLoading
                        .value,

                    // onPressed: () {
                    //   FocusScope.of(context).unfocus();
                    //   if (commonController.signUpFormKey.currentState!
                    //       .saveAndValidate()) {
                    //     Map<String, dynamic> formMap =
                    //         commonController.signUpFormKey.currentState!.value;
                    //
                    //     commonController.signUpMapEmail.value = {
                    //       "role":
                    //           (commonController.userType.value == "Personal")
                    //           ? 'user'
                    //           : (commonController.userType.value ==
                    //                 "Medical Store")
                    //           ? 'medical_store'
                    //           : (commonController.userType.value == "Nurse")
                    //           ? 'nurse'
                    //           : (commonController.userType.value ==
                    //                 "Veterinary Hospital")
                    //           ? 'veteran_hospital'
                    //           : 'wholesale',
                    //       "email": formMap['email'],
                    //       "password": formMap['password'],
                    //       "name": formMap['name'],
                    //     };
                    //     commonController.emailValidationOtpSend(
                    //       emailValidationMap: commonController.signUpMapEmail,
                    //     );
                    //   }
                    // },
                    color: AppColors.buttonColor,
                    child: Text(
                      "Sign Up",
                      style: context.theme.textTheme.bodyMedium!.copyWith(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
                20.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizes.screenMarginHorizontally * 1.5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          FocusScope.of(context).unfocus();
                          //  commonController.logInWithGoogle();
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 10.h,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              AppSizes.defaultRadius,
                            ),
                            border: Border.all(
                              color: context.theme.disabledColor.withValues(
                                alpha: .3,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                AppAssets.googleIconPng,
                                height: 22.r,
                              ),
                              10.horizontalSpace,
                              Text(
                                "Continue with Google",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: context.theme.disabledColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                40.verticalSpace,
              ],
            );
          }),
        ),
      ),
    );
  }
}

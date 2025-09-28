import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_store_app/consts/app_sizes.dart';

import '../consts/app_colors.dart';

class CustomInputField extends StatelessWidget {
  final FocusNode? focusNode;
  final String title;
  final String? subTitle;
  final String fieldTag;
  final String hintText;
  final String? helperText;
  final IconData? icon;
  final IconData? endIcon;
  final bool isPasswordObx;
  final bool showDeleteIcon;
  final Function? onDelete;
  final bool isEnable;
  final bool isAutoFocus;
  final bool isOnlyNumber;
  final bool isOptional;
  final RxBool? isPasswordShow;
  final double? padding;
  final int? maxLines;
  final int? minLines;
  final int? maxLength;
  final String? initialValue;
  final bool isShowTitle;
  final bool showBorder;
  final Widget? leadingWidget;
  final TextAlign textAlign;
  final TextInputType? keyboardType;
  final Color? fillColor;
  final Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final bool showBg;
  final bool isSuffixTextShow;
  final bool isOutsideTabKeyBoardDismiss;
  const CustomInputField({
    super.key,
    this.focusNode,
    required this.title,
    required this.fieldTag,
    required this.hintText,
    this.subTitle,
    this.icon,
    this.isPasswordObx = false,
    this.isPasswordShow,
    this.padding,
    this.maxLines,
    this.minLines,
    this.initialValue,
    this.onSaved,
    this.isShowTitle = true,
    this.isOutsideTabKeyBoardDismiss = true,
    this.showBorder = false,
    this.endIcon,
    this.leadingWidget,
    this.textAlign = TextAlign.start,
    this.keyboardType,
    this.fillColor,
    this.maxLength,
    this.isEnable = true,
    this.isAutoFocus = false,
    this.isOptional = false,
    this.showDeleteIcon = false,
    this.onDelete,
    this.helperText,
    this.isOnlyNumber = false,
    this.validator,
    this.isSuffixTextShow = false,
    this.showBg = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(fieldTag + title),
      margin: EdgeInsets.symmetric(
        horizontal: padding ?? AppSizes.defaultRadius, // app margin
      ),
      padding: EdgeInsets.symmetric(
        vertical: isShowTitle
            ? subTitle == null
                  ? 12.h
                  : 8.h
            : 8.h,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isShowTitle)
                Text(
                  title,
                  style: context.theme.textTheme.bodyMedium!.copyWith(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),

              if (isOptional)
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 1,
                        ),

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.r),
                          border: Border.all(
                            width: .5,
                            color: context.theme.disabledColor.withValues(
                              alpha: .5,
                            ),
                          ),
                        ),
                        child: Text(
                          'Optional',
                          style: context.theme.textTheme.bodyMedium!.copyWith(
                            fontSize: 12.sp,
                            color: context.theme.disabledColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (showDeleteIcon)
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: onDelete as void Function()?,
                      child: Icon(
                        Icons.delete,
                        size: 20.r,
                        color: AppColors.red,
                      ),
                    ),
                  ),
                ),
            ],
          ),
          if (subTitle != null)
            Text(
              subTitle!,
              style: context.theme.textTheme.bodyMedium!.copyWith(
                fontSize: 12.sp,
                color: context.theme.disabledColor,
              ),
            ),
          if (isShowTitle) 8.verticalSpace,
          Container(
            decoration: BoxDecoration(
              color: showBg
                  ? (maxLength == null
                        ? Get.theme.scaffoldBackgroundColor
                        : null)
                  : Colors.transparent,

              borderRadius: BorderRadius.circular(AppSizes.size16),
              // boxShadow:
              //     showBorder
              //         ? null
              //         : [
              //           BoxShadow(
              //             color: const Color(0xFF99ABC6).withValues(
              //               alpha: maxLength == null ? 0.5 : .2,
              //             ), // Shadow color
              //             // Shadow color
              //             offset: const Offset(4, 4),
              //             blurRadius: maxLength == null ? 62 : 30,
              //             spreadRadius: 0,
              //           ),
              //         ],
            ),
            child: Obx(() {
              return FormBuilderTextField(
                focusNode: focusNode,
                cursorColor: AppColors.primaryColorLigGreen,

                autofocus: false,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                onTapOutside: isOutsideTabKeyBoardDismiss
                    ? (event) => FocusScope.of(context).unfocus()
                    : null,

                key: Key(fieldTag + title),
                enabled: isEnable,
                inputFormatters: isOnlyNumber
                    ? [FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*'))]
                    : null,

                buildCounter:
                    (
                      context, {
                      required currentLength,
                      required isFocused,
                      required maxLength,
                    }) => maxLength == null
                    ? null
                    : Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4),
                            child: Text(
                              '${maxLength - currentLength} Characters Left',
                              style: context.theme.textTheme.bodyMedium!
                                  .copyWith(
                                    fontSize: 10.sp,
                                    color: context.theme.disabledColor,
                                  ),
                            ),
                          ),
                        ],
                      ),
                maxLength: maxLength,
                keyboardType: keyboardType,
                textAlign: textAlign,
                onChanged: onSaved,
                initialValue: initialValue,
                obscureText: isPasswordShow?.value ?? RxBool(false).value,
                name: fieldTag,
                maxLines: maxLines ?? 1,
                minLines: minLines ?? 1,
                style: context.theme.textTheme.bodyMedium!.copyWith(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                ),

                decoration: InputDecoration(
                  helperText: helperText,

                  helperStyle: context.theme.textTheme.bodyMedium!.copyWith(
                    fontSize: 12.sp,
                    color: context.theme.disabledColor.withValues(alpha: .6),
                    fontWeight: FontWeight.w400,
                  ),
                  prefixIcon:
                      leadingWidget ??
                      (icon == null
                          ? null
                          : Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Icon(
                                icon,
                                color: AppColors.primaryColorLigGreen
                                    .withValues(alpha: .6),
                                size: 25.r,
                              ),
                            )),
                  suffixIcon: isPasswordObx
                      ? Obx(() {
                          return InkWell(
                            splashColor: Colors.transparent,
                            onTap: () {
                              isPasswordShow?.value =
                                  !(isPasswordShow?.value ?? false);
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.w),
                              child: Transform.flip(
                                flipX: true,
                                child: Icon(
                                  !(isPasswordShow!.value)
                                      ? CupertinoIcons.eye
                                      : CupertinoIcons.eye_slash,

                                  size: 25.r,
                                  color: context.theme.disabledColor.withValues(
                                    alpha: .5,
                                  ),
                                ),
                              ),
                            ),
                          );
                        })
                      : endIcon == null
                      ? null
                      : Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.w),
                          child: Icon(
                            endIcon,
                            color: context.theme.disabledColor,
                            size: 25.r,
                          ),
                        ),
                  hintText: hintText,
                  hintStyle: context.theme.textTheme.bodyMedium!.copyWith(
                    fontSize: 14.sp,
                    color: context.theme.disabledColor.withValues(
                      alpha: showBorder ? .8 : .6,
                    ),
                    fontWeight: FontWeight.w400,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 16.h,
                  ),
                  filled: true,
                  fillColor: fillColor ?? context.theme.scaffoldBackgroundColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSizes.size16),
                    borderSide: showBorder || maxLength != null
                        ? BorderSide(color: AppColors.borderColor, width: 1)
                        : BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSizes.defaultRadius),
                    borderSide: showBorder
                        ? BorderSide(color: AppColors.borderColor, width: 1)
                        : BorderSide.none,
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSizes.defaultRadius),
                    borderSide: showBorder
                        ? const BorderSide(color: AppColors.red, width: 1)
                        : BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSizes.defaultRadius),
                    borderSide: BorderSide(
                      color: AppColors.borderColor,
                      width: 1.w,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(AppSizes.defaultRadius),
                    borderSide: BorderSide(
                      color: context.theme.disabledColor.withValues(alpha: .5),
                      width: 1,
                    ),
                  ),
                ),
                validator: validator,
              );
            }),
          ),
        ],
      ),
    );
  }
}

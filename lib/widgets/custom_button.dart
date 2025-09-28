import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../consts/app_colors.dart';
import '../consts/app_sizes.dart';

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final Widget child;
  final double? width;
  final double? height;
  final double? radius;
  final Color? color;
  final Color? borderColor;
  final bool isDisableColor;
  final bool isLoading;
  final bool isShowBorder;
  final bool isNeedWidth;
  const CustomButton({
    super.key,
    this.onPressed,
    required this.child,
    this.width,
    this.radius,
    this.isDisableColor = false,
    this.height,
    this.color,
    this.borderColor,
    this.isShowBorder = false,
    this.isLoading = false,
    this.isNeedWidth = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading ? null : onPressed,
      child: Container(
        alignment: Alignment.center,
        width: (isNeedWidth) ? width ?? Get.width : null,
        height: height ?? AppSizes.buttonHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? AppSizes.defaultRadius),
          color: color ?? AppColors.buttonColor,
          border: isShowBorder
              ? Border.all(
                  color: borderColor ?? AppColors.primaryColorLigGreen,
                  width: 1,
                )
              : null,
          // gradient:
          //     color != null
          //         ? null
          //         : isDisableColor
          //         ? null
          //         : onPressed == null
          //         ? buttonDisableGradient
          //         : buttonGradient,
          boxShadow: isDisableColor
              ? [
                  BoxShadow(
                    color: const Color(
                      0xFF99ABC6,
                    ).withValues(alpha: .4), // Shadow color
                    offset: const Offset(0, 2),
                    blurRadius: 2,
                    spreadRadius: 0,
                  ),
                ]
              : [],
        ),
        child: isLoading
            ? Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircularProgressIndicator(),
              )
            : child,
      ),
    );
  }
}

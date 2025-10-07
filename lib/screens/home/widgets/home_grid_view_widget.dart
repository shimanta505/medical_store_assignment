import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeGridViewWidget extends StatelessWidget {
  final BackgroundType? backgroundType;
  final double? height;
  final double? width;
  final String title;
  final String rxValue;
  final IconData? icon;
  const HomeGridViewWidget({
    super.key,
    this.backgroundType,
    required this.title,
    required this.rxValue,
    this.icon,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 120.h,
      width: width ?? 300.w,
      //  margin: EdgeInsets.all(15.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          _setBackground(
            backgroundType ?? BackgroundType.GreenGradient,
            height,
            width,
          ),
          // content
          Padding(
            padding: EdgeInsets.all(20.sp),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Texts
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.titleMedium),
                    10.verticalSpace,
                    Text(
                      rxValue,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
                const Spacer(),
                // Icon
                Align(
                  alignment: Alignment.bottomRight,
                  child: Icon(
                    icon ?? Icons.inventory_2_outlined,
                    color: Colors.green,
                    size: 32,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _setBackground(BackgroundType backgroundType, double? height, double? width) {
    switch (backgroundType) {
      case BackgroundType.NestedContainer:
        return Stack(
          children: [
            Positioned(
              top: height == null ? -70.sp : -(height / 1.7).sp,
              right: 0,
              left: width == null ? 100.sp : (width / 3).sp,
              child: Transform.rotate(
                angle: -0.3,
                child: Container(
                  height: height == null ? 100.h : (height / 1.2).sp,
                  width: width == null ? 100.sp : (width / 1.2).w,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
              ),
            ),
            Positioned(
              top: height == null ? -70.sp : -(height / 1.7).sp,
              right: 0,
              left: width == null ? 100.sp : (width / 3).sp,
              child: Transform.rotate(
                angle: -0.3,
                child: Container(
                  height: height == null ? 100.h : (height / 1.2).sp,
                  width: width == null ? 100.sp : (width / 1.2).w,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
              ),
            ),
          ],
        );

      case BackgroundType.GreenGradient:
        return Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(
                height == null ? 0.2 : height * 0.004,
                width == null ? 1.3 : width * 0.009,
              ),
              radius: height == null ? 1 : height / 190.h,
              colors: [Color(0xFFADDEBE), Colors.white],
            ),
          ),
        );
      case BackgroundType.YellowGradient:
        return Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(
                height == null ? 0.2 : height * 0.004,
                width == null ? 1.3 : width * 0.009,
              ),
              radius: height == null ? 1 : height / 190.h,
              colors: [Color(0xFFEDF6CC), Colors.white],
            ),
          ),
        );
    }
  }
}

enum BackgroundType { NestedContainer, GreenGradient, YellowGradient }

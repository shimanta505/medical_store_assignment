import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_store_app/consts/app_assets.dart';
import 'package:medical_store_app/screens/wholesale/widgets/wholesale_appbar_widget.dart';
import 'package:medical_store_app/utils/widget_extensions.dart';
import 'package:medical_store_app/widgets/custom_appbar.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WholesaleAppbarWidgetTitle(title: "Order Details"),
            30.verticalSpace,
            Text("#000123456", style: context.titleMedium),
            Row(
              children: [
                Text("Status:"),
                10.horizontalSpace,
                Container(
                  height: 30.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Center(
                    child: Text(
                      "Pending",
                      style: context.titleSmall.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 130.h,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 10.sp, horizontal: 15.sp),
            margin: EdgeInsets.symmetric(vertical: 10.sp, horizontal: 15.sp),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.r),
                  child: Image.asset(
                    height: double.maxFinite,
                    width: 120.w,
                    AppAssets.stethoscopeJpg,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10.sp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text("Stethoscope", style: context.titleMedium),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          spacing: 10.sp,
                          children: [
                            "XXl".prototypeWidget,
                            "8/128Gb".prototypeWidget,
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

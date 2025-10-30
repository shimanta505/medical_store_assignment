import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_store_app/utils/widget_extensions.dart';

class OrderListAppbarQueryWidget extends StatelessWidget {
  final String title;
  const OrderListAppbarQueryWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 150.w,
      padding: EdgeInsets.symmetric(vertical: 10.sp, horizontal: 15.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(title, style: context.titleSmall),
          Icon(Icons.keyboard_arrow_down_outlined, size: 24.sp),
        ],
      ),
    );
  }
}

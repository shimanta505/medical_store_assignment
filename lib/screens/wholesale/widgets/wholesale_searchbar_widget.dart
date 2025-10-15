import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WholesaleSearchbarWidget extends StatelessWidget {
  final String searchHint;
  final TextEditingController? controller;
  WholesaleSearchbarWidget({
    super.key,
    required this.searchHint,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 10.sp, right: 10.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: SizedBox(
        height: 20.h,
        width: double.minPositive,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search_sharp,
              size: 26.sp,
              color: Colors.grey,
            ),
            prefixIconConstraints: BoxConstraints(minWidth: 30.w),

            contentPadding: EdgeInsets.zero,
            // isDense: true,
            hintText: searchHint,
            hintStyle: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(color: Colors.grey),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}

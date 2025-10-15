import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../../utils/widget_extensions.dart';

class WholesaleListTile extends StatelessWidget {
  final String companyName;
  final String quantity;
  const WholesaleListTile({
    super.key,
    required this.companyName,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 10.sp,
        right: 10.sp,
        top: 10.sp,
        bottom: 15.sp,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: GradientBoxBorder(
          width: 3,
          gradient: CustomBoxBorder.customContainerGradient,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(companyName, style: context.titleMedium),
            Text(quantity, style: context.titleSmall),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/widget_extensions.dart';

class OrderListListTile extends StatelessWidget {
  const OrderListListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 10.sp, horizontal: 10.sp),
      margin: EdgeInsets.symmetric(vertical: 10.sp, horizontal: 10.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: CustomBoxBorder.gradientBorder,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            textDirection: TextDirection.ltr,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text("#0012345", style: context.bodyMedium),
              Text("Order Date: 10 may 2025", style: context.bodyMedium),
              Text("Customer Name: John Doe", style: context.bodyMedium),
              Text("Total Amount: \$545", style: context.bodyMedium),
            ],
          ),
          Container(
            height: 30.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: Color(0xFFADDEBE),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Center(child: Text("Pending", style: context.titleSmall)),
          ),
        ],
      ),
    );
  }
}

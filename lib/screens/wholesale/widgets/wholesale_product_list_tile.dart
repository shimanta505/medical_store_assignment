import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../../utils/widget_extensions.dart';

class WholesaleProductListTile extends StatelessWidget {
  final IconData? productIcon;
  final String productName;
  final String productPrice;
  const WholesaleProductListTile({
    super.key,
    this.productIcon,
    required this.productName,
    required this.productPrice,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 70.h,
              width: 40.w,
              margin: EdgeInsets.all(10.sp),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Icon(Icons.gif_box, color: Colors.white),
            ),
            Expanded(
              child: Text(
                productName,
                style: context.bodyLarge,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
                //  maxLines: 1,
              ),
            ),
            30.horizontalSpace,
            Text(productPrice, style: context.titleSmall),
          ],
        ),
      ),
    );
  }
}

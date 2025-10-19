import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WholesaleAppbarWidgetTitle extends StatelessWidget {
  final String title;
  const WholesaleAppbarWidgetTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.sp),
      child: Row(
        children: [
          Icon(Icons.arrow_back_ios_new, size: 18.sp),
          20.horizontalSpace,
          Text(title, style: Theme.of(context).textTheme.titleLarge),
        ],
      ),
    );
  }
}

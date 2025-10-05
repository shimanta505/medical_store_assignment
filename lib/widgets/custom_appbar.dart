import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_store_app/consts/app_colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  Widget child;
  CustomAppbar({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.gradientLightGreenF6CC,
      child: SafeArea(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          padding: EdgeInsets.all(10.sp),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.gradientWhiteEFE0,
                AppColors.gradientLightGreenF6CC,
              ],
              // colors: [Colors.red, Colors.green],
            ),
          ),
          child: child,
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(180.h);
}

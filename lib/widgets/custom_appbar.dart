import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_store_app/consts/app_colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;
  final double? height;
  CustomAppbar({super.key, required this.child, this.height});

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
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.gradientLightGreenF6CC,
                AppColors.gradientWhiteEFE0,
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
  Size get preferredSize => Size.fromHeight(height ?? 140.h);
}

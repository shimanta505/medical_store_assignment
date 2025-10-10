import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_store_app/consts/app_assets.dart';
import 'package:medical_store_app/consts/app_colors.dart';
import 'package:medical_store_app/screens/home/homeController.dart';
import 'package:medical_store_app/screens/home/widgets/home_grid_view_widget.dart';
import 'package:medical_store_app/widgets/custom_appbar.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({super.key});

  HomeController homeController = Get.put(HomeController());
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (homeController) => Scaffold(
        backgroundColor: Colors.white,
        appBar: _homeAppBar(context),
        body: _homePage(context),
      ),
    );
  }

  Widget _homePage(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      children: [
        HomeGridViewWidget(
          title: 'Total Order',
          rxValue: '20',
          height: 100.h,
          width: 100.w,
        ),
        HomeGridViewWidget(
          title: 'Total Order',
          rxValue: '20',
          height: 100.h,
          width: 100.w,
        ),
        HomeGridViewWidget(
          title: 'Total Order',
          rxValue: '20',
          height: 100.h,
          width: 100.w,
        ),
        HomeGridViewWidget(
          title: 'Total Order',
          rxValue: '20',
          height: 100.h,
          width: 100.w,
        ),
        HomeGridViewWidget(
          title: 'Total Order',
          rxValue: '20',
          height: 100.h,
          width: 100.w,
        ),
        HomeGridViewWidget(
          title: 'Total Order',
          rxValue: '20',
          height: 100.h,
          width: 100.w,
        ),
        HomeGridViewWidget(
          title: 'Total Order',
          rxValue: '20',
          height: 100.h,
          width: 100.w,
        ),
      ],
    );
  }

  PreferredSizeWidget _homeAppBar(BuildContext context) => CustomAppbar(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 60.h,
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 20.sp,
            right: 10.sp,
            top: 10.sp,
            bottom: 10.sp,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.centerRight,
              colors: [
                AppColors.gradientGreen9B61,
                AppColors.gradientLightGreenF6CC,
              ],
            ),
            borderRadius: BorderRadius.circular(30.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(35.r),
                child: Image.asset(
                  height: double.maxFinite,
                  width: 50.w,
                  AppAssets.profileJpg,
                  fit: BoxFit.cover,
                ),
              ),
              10.horizontalSpace,
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyMedium?.copyWith(color: AppColors.white),
                  ),
                  Text(
                    "Mr Shahinur",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(color: Colors.white),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.notifications_none,
                color: AppColors.gradientGreen9B61,
                size: 30.sp,
              ),
            ],
          ),
        ),
        20.verticalSpace,
        Container(
          height: 70.h,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.sp, horizontal: 15.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40.h,
                  width: 40.h,
                  padding: EdgeInsets.all(10.sp),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.gradientLightGreenF6CC,
                  ),
                  child: Image.asset(AppAssets.parcelIconPng, fit: BoxFit.fill),
                ),
                20.horizontalSpace,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Total products",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      "22,000",
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
                30.horizontalSpace,
                Container(
                  height: 35.h,
                  width: 120.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      "+ add products",
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(color: AppColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

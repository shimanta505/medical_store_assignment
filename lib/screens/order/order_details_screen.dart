import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:medical_store_app/consts/app_assets.dart';
import 'package:medical_store_app/screens/order/orderController.dart';
import 'package:medical_store_app/screens/order/widgets/prototype_widget.dart';
import 'package:medical_store_app/screens/wholesale/widgets/wholesale_appbar_widget.dart';
import 'package:medical_store_app/utils/widget_extensions.dart';
import 'package:medical_store_app/widgets/custom_appbar.dart';

class OrderDetailsScreen extends GetView<OrderController> {
  OrderDetailsScreen({super.key});

  final OrderController orderController = Get.put(OrderController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OrderController>(
      builder: (orderController) {
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
                          style: context.titleSmall.copyWith(
                            color: Colors.white,
                          ),
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
                height: 140.h,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  vertical: 10.sp,
                  horizontal: 15.sp,
                ),
                margin: EdgeInsets.symmetric(
                  vertical: 10.sp,
                  horizontal: 15.sp,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r),
                  border: GradientBoxBorder(
                    gradient: CustomBoxBorder.customContainerGradient,
                    width: 2,
                  ),
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
                    GetBuilder<OrderController>(
                      id: UISection.prototype,
                      builder: (controller) {
                        return Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.sp),
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
                                    PrototypeWidget(protoType: "XXl"),
                                    PrototypeWidget(protoType: "8/128Gb"),
                                  ],
                                ),
                                Text("Category", style: context.titleSmall),
                                Text("Size Details", style: context.titleSmall),
                                10.verticalSpace,
                                Text(
                                  "৳ 5000",
                                  style: context.titleSmall.copyWith(
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              GetBuilder<OrderController>(
                id: UISection.shippingAddressExpand,
                builder: (orderController) {
                  return AnimatedContainer(
                    height: orderController.isShippingAddressExpand
                        ? 200.h
                        : 100.h,
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(
                      vertical: 10.sp,
                      horizontal: 15.sp,
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10.sp,
                      horizontal: 15.sp,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    duration: Duration(milliseconds: 300),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.local_shipping, size: 24.sp),
                            Text(
                              "Shipping Address",
                              style: context.titleMedium,
                            ),
                            InkWell(
                              onTap: () {
                                var isExpand =
                                    orderController.isShippingAddressExpand;
                                orderController.shippingAddressExpand =
                                    !isExpand;
                                orderController.update([
                                  UISection.shippingAddressExpand,
                                ]);
                              },
                              child: orderController.isShippingAddressExpand
                                  ? Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      size: 24.sp,
                                    )
                                  : Icon(
                                      Icons.keyboard_arrow_up_sharp,
                                      size: 24.sp,
                                    ),
                            ),
                          ],
                        ),
                        20.verticalSpace,
                        Padding(
                          padding: EdgeInsets.only(right: 35.sp),
                          child: Text(
                            "2715 Ash Dr. San Jose, South Dakota 83475",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            maxLines: 3,
                            style: context.titleSmall,
                          ),
                        ),
                        20.verticalSpace,
                        orderController.isShippingAddressExpand
                            ? Text(
                                "more details to shown",
                                style: context.titleSmall,
                              )
                            : Container(),
                      ],
                    ),
                  );
                },
              ),
              GetBuilder<OrderController>(
                id: UISection.paymentProcessExpand,
                builder: (orderController) {
                  return AnimatedContainer(
                    height: orderController.isPaymentInfoExpand ? 200.h : 100.h,
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(
                      vertical: 10.sp,
                      horizontal: 15.sp,
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10.sp,
                      horizontal: 15.sp,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    duration: Duration(milliseconds: 300),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.paypal, size: 24.sp),
                            Text("Payment Process", style: context.titleMedium),
                            InkWell(
                              onTap: () {
                                var isExpand =
                                    orderController.isPaymentInfoExpand;
                                orderController.paymentInfoExpand = !isExpand;
                                orderController.update([
                                  UISection.paymentProcessExpand,
                                ]);
                              },
                              child: orderController.isPaymentInfoExpand
                                  ? Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      size: 24.sp,
                                    )
                                  : Icon(
                                      Icons.keyboard_arrow_up_sharp,
                                      size: 24.sp,
                                    ),
                            ),
                          ],
                        ),
                        20.verticalSpace,
                        Padding(
                          padding: EdgeInsets.only(right: 35.sp),
                          child: Text(
                            "Cash on Delivery",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            maxLines: 3,
                            style: context.titleSmall,
                          ),
                        ),
                        20.verticalSpace,
                        orderController.isPaymentInfoExpand
                            ? Text(
                                "more details to shown",
                                style: context.titleSmall,
                              )
                            : Container(),
                      ],
                    ),
                  );
                },
              ),
              GetBuilder<OrderController>(
                id: UISection.priceDetails,
                builder: (orderController) {
                  return AnimatedContainer(
                    height: orderController.isPriceDetailsExpand
                        ? 200.h
                        : 100.h,
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(
                      vertical: 10.sp,
                      horizontal: 15.sp,
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10.sp,
                      horizontal: 15.sp,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    duration: Duration(milliseconds: 300),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.price_change, size: 24.sp),
                            Text("price details", style: context.titleMedium),
                            InkWell(
                              onTap: () {
                                var isExpand =
                                    orderController.isPriceDetailsExpand;
                                orderController.priceDetailsExpand = !isExpand;
                                orderController.update([
                                  UISection.priceDetails,
                                ]);
                              },
                              child: orderController.isPriceDetailsExpand
                                  ? Icon(
                                      Icons.keyboard_arrow_down_sharp,
                                      size: 24.sp,
                                    )
                                  : Icon(
                                      Icons.keyboard_arrow_up_sharp,
                                      size: 24.sp,
                                    ),
                            ),
                          ],
                        ),
                        20.verticalSpace,
                        Padding(
                          padding: EdgeInsets.only(right: 35.sp),
                          child: Text(
                            "Cash on Delivery",
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            maxLines: 3,
                            style: context.titleSmall,
                          ),
                        ),
                        20.verticalSpace,
                        orderController.isPriceDetailsExpand
                            ? Text("price list show", style: context.titleSmall)
                            : Container(),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

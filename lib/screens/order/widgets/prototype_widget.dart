import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:medical_store_app/screens/order/orderController.dart';
import 'package:medical_store_app/utils/widget_extensions.dart';

class PrototypeWidget extends StatelessWidget {
  final String protoType;
  PrototypeWidget({super.key, required this.protoType});

  OrderController orderController = Get.find<OrderController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        orderController.setSelectedType = protoType;
        orderController.update([UISection.prototype]);
      },
      child: orderController.getSelectedPrototype != protoType
          ? Container(
              padding: EdgeInsets.symmetric(vertical: 5.r, horizontal: 5.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(color: Colors.black26, width: 1),
              ),
              child: Text(protoType, style: context.bodyMedium),
            )
          : Container(
              padding: EdgeInsets.symmetric(vertical: 5.r, horizontal: 5.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                border: Border.all(color: Colors.green, width: 1),
              ),
              child: Text(protoType, style: context.bodyMedium),
            ),
    );
  }
}

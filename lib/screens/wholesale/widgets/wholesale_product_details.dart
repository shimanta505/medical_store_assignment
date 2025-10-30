import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_store_app/screens/order/order_list/order_list_screen.dart';
import 'package:medical_store_app/screens/wholesale/widgets/wholesale_appbar_widget.dart';
import 'package:medical_store_app/screens/wholesale/widgets/wholesale_product_list_tile.dart';
import 'package:medical_store_app/screens/wholesale/widgets/wholesale_searchbar_widget.dart';

import '../../../widgets/custom_appbar.dart';

class WholesaleProductDetails extends StatelessWidget {
  const WholesaleProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            WholesaleAppbarWidgetTitle(title: "Wholesale Stores"),
            30.verticalSpace,
            WholesaleSearchbarWidget(searchHint: "search By medicine"),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.only(top: 10.sp, bottom: 20.sp),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrderListScreen()),
            );
          },
          child: WholesaleProductListTile(
            productName: "Napa Extra",
            productPrice: "3.75",
          ),
        ),
      ),
    );
  }
}

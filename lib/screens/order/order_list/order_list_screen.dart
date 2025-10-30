import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_store_app/screens/order/order_list/widgets/order_list_appbar_query_widget.dart';
import 'package:medical_store_app/screens/order/order_list/widgets/order_list_list_tile.dart';
import 'package:medical_store_app/screens/wholesale/widgets/wholesale_appbar_widget.dart';
import 'package:medical_store_app/screens/wholesale/widgets/wholesale_searchbar_widget.dart';
import 'package:medical_store_app/widgets/custom_appbar.dart';

class OrderListScreen extends StatelessWidget {
  const OrderListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        height: 180.h,
        child: Column(
          children: [
            WholesaleAppbarWidgetTitle(title: "Order List"),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OrderListAppbarQueryWidget(title: "All"),
                OrderListAppbarQueryWidget(title: "Today"),
              ],
            ),
            20.verticalSpace,
            WholesaleSearchbarWidget(
              searchHint: "Search by Order ID, Customer Name etc",
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return OrderListListTile();
        },
      ),
    );
  }
}

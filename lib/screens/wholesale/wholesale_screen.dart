import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_store_app/screens/wholesale/widgets/wholesale_appbar_widget.dart';
import 'package:medical_store_app/screens/wholesale/widgets/wholesale_list_tile.dart';
import 'package:medical_store_app/screens/wholesale/widgets/wholesale_product_details.dart';
import 'package:medical_store_app/screens/wholesale/widgets/wholesale_searchbar_widget.dart';
import 'package:medical_store_app/widgets/custom_appbar.dart';

class WholesaleScreen extends StatelessWidget {
  const WholesaleScreen({super.key});

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
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => WholesaleProductDetails(),
              ),
            );
          },
          child: WholesaleListTile(
            companyName: "Global Pharma Distributors Ltd",
            quantity: "20 Products",
          ),
        ),
      ),
    );
  }
}

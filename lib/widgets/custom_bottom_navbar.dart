import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_store_app/routes/nav_route_controller.dart';
import 'package:medical_store_app/screens/home/home_screen.dart';
import 'package:medical_store_app/screens/wholesale/widgets/wholesale_product_details.dart';

class CustomBottomNavbar extends GetView<NavRouteController> {
  CustomBottomNavbar({super.key});

  NavRouteController navRouteController = Get.put(NavRouteController());

  static List<Widget> pages = [
    HomeScreen(),
    WholesaleProductDetails(),
    Container(
      height: double.maxFinite,
      width: double.maxFinite,
      color: Colors.red,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavRouteController>(
      builder: (controller) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: navRouteController.currantPageIndex,
            onTap: (index) {
              navRouteController.currantPageIndex = index;
              navRouteController.update();
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
          body: pages[navRouteController.currantPageIndex],
        );
      },
    );
  }
}

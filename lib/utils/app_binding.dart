import 'package:get/get.dart';
import 'package:medical_store_app/routes/nav_route_controller.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(NavRouteController());
  }
}

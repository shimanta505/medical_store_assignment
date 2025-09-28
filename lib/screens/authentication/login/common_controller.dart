import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CommonController extends GetxController {
  GlobalKey signUpFormKey = GlobalKey<FormState>();
  GlobalKey signInFormKey = GlobalKey<FormState>();
  RxBool isEmailVerificationOtpSendLoading = false.obs;
}

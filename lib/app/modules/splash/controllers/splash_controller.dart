// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:travelPal/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(const Duration(seconds: 1), () {
      Get.offAllNamed(Routes.HOME);
    });
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

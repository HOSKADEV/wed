import 'package:get/get.dart';

import '../controllers/sub_details_controller.dart';

class SubDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SubDetailsController>(
      () => SubDetailsController(),
    );
  }
}

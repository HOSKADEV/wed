import 'package:get/get.dart';

import '../controllers/home_tow_controller.dart';

class HomeTowBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeTowController>(
      () => HomeTowController(),
    );
  }
}

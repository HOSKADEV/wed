import 'package:get/get.dart';

import '../controllers/search_job_controller.dart';

class SearchJobBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchJobController>(
      () => SearchJobController(),
    );
  }
}

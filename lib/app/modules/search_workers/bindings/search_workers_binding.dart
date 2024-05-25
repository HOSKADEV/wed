import 'package:get/get.dart';

import '../controllers/search_workers_controller.dart';

class SearchWorkersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchWorkersController>(
      () => SearchWorkersController(),
    );
  }
}

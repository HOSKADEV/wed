import 'package:get/get.dart';

import '../controllers/search.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchControllerG>(
      () => SearchControllerG(),
    );
  }
}

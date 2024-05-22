// ignore_for_file: unnecessary_overrides

import 'package:travelPal/app/models/dropdown_item_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;
  RxString selectedItem = "".obs;
  Rxn<DropdownItemModel> selectedUnitOfGo = Rxn<DropdownItemModel>();
  Rxn<DropdownItemModel> selectedUnitOfArrival = Rxn<DropdownItemModel>();
  RxList<DropdownItemModel> ListOfDepartureCities = [
    DropdownItemModel("1", id: 1, title: "الوادي"),
    DropdownItemModel("2", id: 2, title: "عنابة"),
    DropdownItemModel("3", id: 3, title: "قسنطينة"),
    DropdownItemModel("4", id: 4, title: "وهران"),
    DropdownItemModel("4", id: 4, title: "الجزائر"),
  ].obs;
  RxList<DropdownItemModel> ListOfArrivalCities = [
    DropdownItemModel("1", id: 1, title: "جيجل"),
    DropdownItemModel("2", id: 2, title: "عنابة"),
    DropdownItemModel("3", id: 3, title: "قسنطينة"),
    DropdownItemModel("4", id: 4, title: "وهران"),
    DropdownItemModel("4", id: 4, title: "الجزائر"),
    DropdownItemModel("5", id: 5, title: "بجاية"),
    DropdownItemModel("6", id: 6, title: "تمنراست"),
  ].obs;

  @override
  void onInit() {
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

  void increment() => count.value++;
}

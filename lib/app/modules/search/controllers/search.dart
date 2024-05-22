// ignore_for_file: unnecessary_overrides

import 'package:travelPal/app/models/dropdown_item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchControllerG extends GetxController {
//
  RxString selectedItem = "".obs;
  Rxn<DropdownItemModel> selectedUnitOfGo = Rxn<DropdownItemModel>();
  Rxn<DropdownItemModel> selectedUnitOfArrival = Rxn<DropdownItemModel>();
  RxList<DropdownItemModel> ListOfDepartureCities = [
    DropdownItemModel("1", id: 1, title: "مرافق"),
    DropdownItemModel("2", id: 2, title: "صاحب سيارة"),
  ].obs;
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController tripTypeController = TextEditingController();
  TextEditingController detailsController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String name = 'الاسم';
  String phone = 'الهاتف';
  String tripType = 'صاحب سيارة';
  String details = 'تفاصيل';
  String villeOfGo = "";
  String villeOfArrival = "";
  void sendData() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      String message = 'الاسم: $name\n'
          'رقم الهاتف: $phone\n'
          ' الانطلاقة من: $villeOfGo\n'
          ' التوجه الى: $villeOfArrival\n'
          'نوع الرحلة: $tripType\n'
          'تفاصيل الرحلة:\n $details';

      String phoneNumber =
          "+213674555725"; // رقم الهاتف الذي سيتم إرسال الرسالة إليه
      String url =
          'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}';

      if (await canLaunch(url)) {
        await launch(url);
      } else {}
    }
  }

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
}

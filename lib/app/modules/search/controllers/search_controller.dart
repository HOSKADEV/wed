// ignore_for_file: unnecessary_overrides

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:CNIQUE/app/core/constants/images_assets_constants.dart';
import 'package:CNIQUE/app/core/constants/strings_assets_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchedController extends GetxController {
  RxInt indexOfpage = 0.obs;
  TextEditingController nameCarController = TextEditingController();
  TextEditingController numberSrialController = TextEditingController();
  TextEditingController catigoryController = TextEditingController();
  TextEditingController modelController = TextEditingController();
  TextEditingController yearOfFirstUseController = TextEditingController();
  TextEditingController powerTypeController = TextEditingController();
  TextEditingController sparePartNameController = TextEditingController();
  TextEditingController sparePartNumberController = TextEditingController();

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

      String message = 'اسم السيارة: ${nameCarController.text}\n'
          'الرقم التسلسلي: ${numberSrialController.text}\n'
          'الصنف: ${catigoryController.text}\n'
          'الطراز: ${modelController.text}\n'
          'سنة أول استعمال: ${yearOfFirstUseController.text}\n'
          'نوع الطاقة: ${powerTypeController.text}\n'
          'اسم قطعة الغيار: ${sparePartNameController.text}\n'
          'رقم قطعة الغيار: ${sparePartNumberController.text}';

      String phoneNumber =
          "+213666916635"; // رقم الهاتف المستهدف لإرسال الرسالة
      String url =
          'https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}';

      if (await canLaunch(url)) {
        await launch(url);
      } else {
        // في حالة عدم تمكين الرسائل عبر WhatsApp
        print('Could not launch $url');
      }
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

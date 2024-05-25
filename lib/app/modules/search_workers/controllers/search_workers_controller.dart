// ignore_for_file: unnecessary_overrides

import 'package:dolani/app/models/dropdown_item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:dolani/app/core/constants/images_assets_constants.dart';
import 'package:dolani/app/core/constants/strings_assets_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchWorkersController extends GetxController {
  RxInt indexOfpage = 0.obs;
  TextEditingController nameCarController = TextEditingController();
  TextEditingController oldController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  TextEditingController certificateController = TextEditingController();
  // TextEditingController TimeJobController = TextEditingController();
  // TextEditingController powerTypeController = TextEditingController();
  // TextEditingController sparePartNameController = TextEditingController();
  // TextEditingController sparePartNumberController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  //
  RxString selectedItem = "".obs;
  Rxn<DropdownItemModel> selectedTimeJob = Rxn<DropdownItemModel>();
  // Rxn<DropdownItemModel> selectedUnitOfArrival = Rxn<DropdownItemModel>();
  RxList<DropdownItemModel> ListOfTimeJob = [
    DropdownItemModel("1", id: 1, title: "دوام كلي (8 ساعات باليوم)"),
    DropdownItemModel("2", id: 2, title: "دوام جزئي (4 ساعات باليوم)"),
    DropdownItemModel("3", id: 3, title: "العمل بالساعة"),
    DropdownItemModel("4", id: 4, title: "العمل بالمشروع"),
  ].obs;

  void sendData() async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      String message = ' [تطبيق دلني] : "البحث عن عمال" \n'
          'طبيعة العمل  : ${nameCarController.text}\n'
          'مكان العمل : ${oldController.text}\n'
          'عدد العمال  ${jobController.text}\n'
          'الشهادة او المستوى الدراسي المطلوب: ${certificateController.text == "" ? "غير مهم" : certificateController.text}\n'
          '  توقيت العمل : ${selectedTimeJob.value?.title.toString()}\n';

      String phoneNumber =
          "+213792920391"; // رقم الهاتف المستهدف لإرسال الرسالة
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

// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  RxList<String> listTitle1 = [
    " \n"
        "تطبيق 'دلني' هو منصة مخصصة لربط الأفراد الباحثين عن عمل مع الأشخاص أو الشركات التي تبحث عن عمال. يتم ذلك من خلال واجهة بسيطة وفعالة تتيح للمستخدمين إدخال البيانات الضرورية وإرسالها عبر الواتساب لعملية المراجعة والتواصل المباشر. سواء كنت تبحث عن فرصة عمل جديدة أو تبحث عن موظفين لشركتك، فإن تطبيق 'دلني' يوفر لك الحل الأمثل."
        " \n"
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

// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:wed/app/core/constants/images_assets_constants.dart';
import 'package:wed/app/core/constants/strings_assets_constants.dart';

class DetailsController extends GetxController {
//============== رقم الصفحة ============================
  RxInt indexOfpage = 0.obs;
//=== قائمة بها مجموعة القوائم الموجودة في التطبيق ===
  RxList<RxList<String>> createLists() {
    return [
      listOfDelayedMarriage,
      listOfAreAboutToMarried,
      listOfNewlyMarried,
      listOfGoingDifficultPeriod,
      listOfDivorce,
      listOfParents,
      listOfRating,
      listOfConsultingSolutions,
      listOfAdvice
    ].obs;
  }

//================ قائمة العناوين ====================
  RxList<String> listOfTitle = [
    StringsAssetsConstants.delayedMarriage,
    StringsAssetsConstants.areAboutToMarried,
    StringsAssetsConstants.newlyMarried,
    StringsAssetsConstants.goingDifficultPeriod,
    StringsAssetsConstants.divorce,
    StringsAssetsConstants.parents,
    StringsAssetsConstants.rating,
    StringsAssetsConstants.consultingSolutions,
    StringsAssetsConstants.advice,
  ].obs;
//================ قائمة الصور ======================
  RxList<String> listOfImage = [
    ImagesAssetsConstants.delayedMarriage, //1
    ImagesAssetsConstants.areAboutToMarried, //2
    ImagesAssetsConstants.newlyMarried, //3
    ImagesAssetsConstants.goingDifficultPeriod, //4
    ImagesAssetsConstants.divorce, //5
    ImagesAssetsConstants.parents, //6
    ImagesAssetsConstants.rating, //7
    ImagesAssetsConstants.consultingSolutions, //8
    ImagesAssetsConstants.advice, //9
  ].obs;
//==================  1  ====================
  RxList<String> listOfDelayedMarriage = [
    "تشخيص المشكلات الإجتماعية وتحديد طبيعتها",
    "مشكلات النفور وعدم الإقتناع",
    "التفكير الواقعي والإيجابي",
    "التكيف الإجتماعي للعميل",
    "التقييم والمتابعة الإجتماعية",
  ].obs;
//==================  2  ====================
  RxList<String> listOfAreAboutToMarried = [
    "دراسة ومتابعة البيانات الخاصة بالعميل ",
    "معايير اختيار شريك الحياة",
    "الخطوبة وشروطها ",
    "العلاقات الإجتماعية في فترة الخطوبة",
    "تنمية مهارات المقبلين على الزواج \n(كيفية التعامل ،الإتصال الجيد ،فن الرد )",
    "تعزيز الحوار الإيجابي للمقبلين على الزواج",
    "ثقافة الوعي الواجب اتباعها في أولى خطوات الحياة الزوجية ",
    "تصحيح بعض التصورات والمفاهيم المتعلقة بالزواج ",
    "كيفية مواجهة الحياة الزوجية والأسرية ",
    "كيفية التعامل مع التدخلات الخارجية في العلاقة الزوجية ",
    "التقييم والمتابعة",
  ].obs;
//================== 3  ====================
  RxList<String> listOfNewlyMarried = [
    "ارشادات بخصوص العلاقات الإجتماعية للمتزوجين",
    "ثقافة الوعي الواجب اتباعها في أولى خطوات الحياة الزوجية",
    " معرفة أسس ومهارات التوافق الزواجي السليم",
    "كيفية التعامل مع الدور الجديد في العلاقات الإجتماعية",
    "ترسيخ وتعزيز الحوار الإيجابي في العلاقات الإجتماعية للأزواج",
    "كيفية الربط بين المسؤوليات الداخلية والخارجية",
    "التعرف على الحقوق والواجبات لكلا الطرفين",
    "كيفية التعامل مع التدخلات الخارجية على العلاقات الزوجية",
    "فن إدارة المواقف الصعبة",
    "التقييم والمتابعة",
  ].obs;
//================== 4  ====================
  RxList<String> listOfGoingDifficultPeriod = [
    "تشخيص المشكلات الإجتماعية وتحديد طبيعته",
    "كيفية مواجهة الخلافات الفجائية الأسرية",
    "كيفية تطويق وتضييق فجوة الخلافات الزوجية",
    "تجنب صراع الأدوار بين الزوجين",
    "حلول لعدم التكافؤ بين الزوجين",
    "كيفية التكيف الإجتماعي وبناء حياة زوجية سليمة",
    "إرساء ثقافة الحوار الإيجابي",
    "كيفية و آليات الحوار الإيجابي",
    " كيفية التواصل الأمثل بين الزوجين \n(الإنصات، التفهم و التفاهم،التأقلم)",
    "التقييم والمتابعة",
  ].obs;
//================== 5  ====================
  RxList<String> listOfDivorce = [
    "تشخيص المشكالت الإلجتماعية وتحديد طبيعتها",
    "صراع الأدوار بين الأزواج",
    " تضييق فجوة الخالف الأسري",
    "مشكلات النفور وعدم الإقتناع لأحد الطرفين",
    "التقييم والمتابعة"
  ].obs;
//================== 6  ====================
  RxList<String> listOfParents = [
    " توعية و إرشاد أولياء الأمور",
    " أهمية الإرشاد الأسري للمقبلين على الزواج",
    "أهمية الحوار الإجتماعي",
    "تعزيز الحوار الإيجابي للأسرة",
    "التقييم والمتابعة"
  ].obs;
//================== 7  ====================
  RxList<String> listOfRating = ["الإتصال المباشر بالإخصائي الإجتماعي"].obs;
//================== 8 ====================
  RxList<String> listOfConsultingSolutions = [
    "تعزيز الاتصال الأسري: كيفية بناء علاقات قوية داخل الأسرة وتعزيز التواصل بين أفرادها لتحقيق التفاهم والتآلف.التحدث بفعالية: كيفية تطوير مهارات التواصل والتعبير عن الأفكار والمشاعر بوضوح واحترافية في العلاقات الاجتماعية. إدارة الصراعات: كيفية التعامل مع الخلافات وحل النزاعات بشكل بناء وفعال دون التسبب في تدهور العلاقات."
  ].obs;
//================== 9  ====================
  RxList<String> listOfAdvice =
      ["دورات تأهيلية", "دورات وقائية", " دورات علاجية للمشاكل"].obs;

  RxBool isListVisible = false.obs;

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

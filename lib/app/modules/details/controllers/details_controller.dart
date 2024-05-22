// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:CNIQUE/app/core/constants/images_assets_constants.dart';
import 'package:CNIQUE/app/core/constants/strings_assets_constants.dart';

class DetailsController extends GetxController {
//============== رقم الصفحة ============================
  RxInt indexOfpage = 0.obs;
//=== قائمة بها مجموعة القوائم الموجودة في التطبيق ===
  RxList<RxList<String>> createLists() {
    return [
      listTitle1,
      listTitle3,
    ].obs;
  }

//================ قائمة العناوين ====================
  RxList<String> listOfTitle = [
    StringsAssetsConstants.listTitle2,
    StringsAssetsConstants.listTitle3,
    StringsAssetsConstants.listTitle4,
    StringsAssetsConstants.listTitle5,
    StringsAssetsConstants.listTitle1,
  ].obs;
//================ قائمة الصور ======================
  RxList<String> listOfImage = [
    ImagesAssetsConstants.listImages4, //1
    ImagesAssetsConstants.listImages5, //2
    ImagesAssetsConstants.listImages6, //3
    ImagesAssetsConstants.listImages7,
    ImagesAssetsConstants.listImages8, //4
    ImagesAssetsConstants.listImages9,
    ImagesAssetsConstants.listImages10,
  ].obs;
//==================  1  ====================
  RxList<String> listTitle1 = [
    "•	نبذة عن المؤسسة \n"
        " \n"
        "مرحباً بكم في CNIQUE MÉCANIQUE ، وجهتكم الأولى للحصول على أفضل قطع الغيار بجودة عالية وأسعار تنافسية، نحن نعمل بشغف لتقديم مجموعة واسعة من القطع التي تلبي احتياجاتكم وتناسب ميزانياتكم.  \n"
        " \n"
        " •  رؤيتنا: \n"
        "نسعى لنكون الرواد في سوق قطع الغيار، من خلال تقديم تجربة تسوق إلكترونية مميزة وسهلة الاستخدام، نهدف إلى تسهيل حصولكم على القطع التي تحتاجونها بأسرع وقت ممكن وأفضل خدمة.\n"
        // "-	توجيه المريض إلى الوجهة المناسبة لحالته الصحية  \n"
        // "-	مساعدة المريض ومرافقه للحصول على الخدمات المناسبة لحالته \n"
        // "-	توفير أسعار تنافسية وجودة خدماتية.\n"
        " \n"
        "•  مهمتنا:\n"
        // " \n"
        "مهمتنا نلتزم بتوفير بيئة إلكترونية شفافة وآمنة لتسهيل عمليات البيع والشراء. نحن هنا لضمان أن تكون كل عملية شراء أو بيع سلسة ومضمونة.\n"
        " \n"
        "•	قيمنا:\n"
        // " \n"

        "- الجودة: نحن نحرص على تقديم قطع غيار ذات جودة عالية من مصادر موثوقة.\n"
        "- الثقة: نسعى لبناء علاقة طويلة الأمد مع عملائنا مبنية على الثقة والشفافية.\n"
        "- الخدمة: فريقنا مستعد دائماً لمساعدتكم وتقديم المشورة لضمان حصولكم على أفضل تجربة.\n"
        " \n"
        "•	 فريقنا:\n"
        // " \n"
        "يتكون فريقنا من مجموعة من الخبراء المتخصصين في مجال قطع الغيار، الذين يعملون بجد لضمان تلبية جميع احتياجاتكم وتوقعاتكم، نحن هنا لخدمتكم وتقديم الدعم اللازم في كل خطوة من خطوات عملية الشراء.:\n"
        "\n"
        "• التواصل معنا عن طريق:\n"
        " -	الأرقام الهاتفية\n"
        "0555749163 / 0666916635\n"
        "-	البريد الإلكتروني\n"
        "ferhat.salim9@gmail.com \n"
  ].obs;
  RxList<int> indexListOflist1 = [1].obs;
//==================  2  ====================

//================== 3  ====================
  RxList<String> listTitle3 = [
    "جعفر بالي لقطع غيار السيارات",
    "رفيف لقطع الغيار",
    "قطع غيار المركبات اليابانية",
    "شركة الجندي لقطع غيار الشاحانات",
    "نبيل لقطع الغيار الشاحنات ",
    "وائل عز الدين لقطع غيار السيارات",
    "قطع غيار ميسوبيشي لانسر",
  ].obs;
//================== 4  ====================

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

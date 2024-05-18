// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:SIDIA/app/core/constants/images_assets_constants.dart';
import 'package:SIDIA/app/core/constants/strings_assets_constants.dart';

class DetailsController extends GetxController {
  RxList<String> textOfBottonWhatsApp = [
    "اطلب الان واحجز موعد مع طبيبك",
    "لحجز وسلة نقل اطلب الان",
    "لحجز مقر للإقامة تواصل معنا ",
    "تواصل معنا واطلب وجبتك الان ",
  ].obs;

//============== رقم الصفحة ============================
  RxInt indexOfpage = 0.obs;
//=== قائمة بها مجموعة القوائم الموجودة في التطبيق ===
  RxList<RxList<String>> createLists() {
    return [listTitle2, listTitle3, listTitle4, listTitle5, listTitle1].obs;
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
    ImagesAssetsConstants.listImages2, //1
    ImagesAssetsConstants.listImages3, //2
    ImagesAssetsConstants.listImages4, //3
    ImagesAssetsConstants.listImages5,
    ImagesAssetsConstants.listImages1, //4
  ].obs;
//==================  1  ====================
  RxList<String> listTitle1 = [
    "•	نبذة عن المؤسسة \n"
        " \n"
        "مؤسسة هنّيني لمرافقة المرضى وذويهم، تقدّم لهم خدمات الدعم الشامل، المتمثلة في إعداد الملف الطبي ودراسته، وحجز المواعيد لدى مختلف المؤسسات الطبية، كما تقدم باقة متنوعة من خدمات الإطعام والنقل والإقامة والرعاية النفسية والسياحية المناسبة لحالة المريض ومرافقيه أثناء رحلة العلاج.  \n"
        " \n"
        " •	لماذا تختار هنّيني \n"
        "-	تسهيل الحصول على مختلف الخدمات الصحية\n"
        "-	توجيه المريض إلى الوجهة المناسبة لحالته الصحية  \n"
        "-	مساعدة المريض ومرافقه للحصول على الخدمات المناسبة لحالته \n"
        "-	توفير أسعار تنافسية وجودة خدماتية.\n"
        " \n"
        "•	الحجز الفوري\n"
        // " \n"
        "حجز المواعيد الطبية، النقل، الإطعام، خدمات الرعاية النفسية والسياحية\n"
        " \n"
        "•	الدفع الآمن\n"
        // " \n"
        "الدفع عن طريق مختلف وسائل الدفع الإلكتروني الآمن\n"
        "-	الحساب الجاري، والحساب البنكي\n"
        "-	بريدي موب\n"
        "-	البطاقة الذهبية والبنكية\n"
        " \n"
        "•	التواصل معنا\n"
        // " \n"
        "التواصل مع مؤسستنا عن طريق:\n"
        " -	الأرقام الهاتفية\n"
        "0673625414\n"
        "-	البريد الإلكتروني\n"
        " hanini.3aas.2024@gmail.com\n"
    // "-	الفايسبوك\n"
    // "\n"
    // "\n"
    // "-	التيلغرام\n"
    // "\n"
  ].obs;
  RxList<int> indexListOflist1 = [1, 2].obs;
//==================  2  ====================
  RxList<String> listTitle2 = [
    "•	حجز المواعيد الطبية لدى\n"
        " \n"
        "-	المؤسسات الاستشفائية العامة والخاصة (العيادات الطبية والأطباء العامون والخواص)\n"
        "-	المخابر الطبية العامة والخاصة\n"
        "-	مصالح الأشعة العامة والخاصة\n"
        "-	أقسام العمليات الجراحية العامة والخاصة\n"
        "-	مصالح التأهيل الوظيفي العامة والخاصة\n"
        "كل هذه الخدمات يمكن حجزها بسهولة وسرعة عبر تطبيق هنيني، لتوفير الوقت والجهد وضمان الحصول على أفضل رعاية صحية.\n"
  ].obs;
//================== 3  ====================
  RxList<String> listTitle3 = [
    " الآن مع تطبيق هنيني\n"
        " يمكنك حجز وسيلة النقل بكل سهولة وراحة. ما عليك سوى التواصل معنا عبر الواتساب، وسنقوم بحجز وسيلة النقل المناسبة لك والتي تلبي احتياجاتك وتتوافق مع عدد الأفراد المرافقين لك. لا تتردد في الاتصال بنا!"
  ].obs;
//================== 4  ====================
  RxList<String> listTitle4 = [
    "  مع خدمة هنيني\n"
        "أصبح حجز مكان الإقامة أكثر سهولة وراحة من أي وقت مضى. تواصل معنا عبر الواتساب، وسنقوم بالعثور على المكان المثالي الذي يناسب احتياجاتك وعدد الأفراد المرافقين لك. لا تتردد في الاتصال بنا للحصول على أفضل تجربة إقامة!\n"
  ].obs;
  RxList<String> listTitle5 = [
    "  مع خدمة هنيني\n"
        "أصبح طلب المأكولات والوجبات أمرًا في غاية السهولة والراحة. ما عليك سوى التواصل معنا عبر الواتساب، وسنقوم بتقديم أفضل الخيارات التي تتناسب مع ذوقك ومتطلباتك . لا تتردد في الاتصال بنا للاستمتاع بأفضل تجربة طعام"
  ].obs;
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

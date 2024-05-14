// ignore_for_file: unnecessary_overrides

import 'package:get/get.dart';
import 'package:BIMARiSTAN/app/core/constants/images_assets_constants.dart';
import 'package:BIMARiSTAN/app/core/constants/strings_assets_constants.dart';

class DetailsController extends GetxController {
//============== رقم الصفحة ============================
  RxInt indexOfpage = 0.obs;
//=== قائمة بها مجموعة القوائم الموجودة في التطبيق ===
  RxList<RxList<String>> createLists() {
    return [listTitle1, listTitle2, listTitle3, listTitle4].obs;
  }

//================ قائمة العناوين ====================
  RxList<String> listOfTitle = [
    StringsAssetsConstants.listTitle1,
    StringsAssetsConstants.listTitle2,
    StringsAssetsConstants.listTitle3,
    StringsAssetsConstants.listTitle4,
  ].obs;
//================ قائمة الصور ======================
  RxList<String> listOfImage = [
    ImagesAssetsConstants.listImages1, //1
    ImagesAssetsConstants.listImages2, //2
    ImagesAssetsConstants.listImages3, //3
    ImagesAssetsConstants.listImages4, //4
  ].obs;
//==================  1  ====================
  RxList<String> listTitle1 = ["طلب إستشارة شرعية", "الإستشارات الصحية"].obs;
  RxList<int> indexListOflist1 = [1, 2].obs;
//==================  2  ====================
  RxList<String> listTitle2 = [
    "1. توفير الأدوية الضرورية والمستلزمات الطبية للمرضى الذين يعانون من ظروف مالية صعبة.\n"
        "2. تقديم الدعم المالي لتحاليل طبية دورية ولازمة لتشخيص حالات المرضى ومتابعة تطورات حالتهم الصحية.\n"
        "3. توفير التمويل لإجراء الأشعة التشخيصية المتقدمة التي تساهم في تحديد خطة العلاج الأمثل للمرضى.\n"
        "4. دعم العمليات الجراحية الحرجة والضرورية للمرضى الذين يعانون من حالات صحية تتطلب تدخلاً جراحياً عاجلاً.\n"
        "5. توفير الرعاية اللازمة للأطفال المصابين بأمراض مزمنة أو معوقات صحية تحتاج إلى رعاية وعناية خاصة.\n"
        "6. تقديم الدعم المالي لعلاج الأمراض المزمنة مثل السكري وارتفاع ضغط الدم وأمراض القلب التي تتطلب علاجًا مستمرًا ومكلفًا.\n"
        "8. تقديم الدعم المالي لعمليات زراعة الأعضاء للمرضى الذين يعانون من فشل أعضاء حاد أو مزمن ويحتاجون إلى فرصة للنجاة.\n"
  ].obs;
//================== 3  ====================
  RxList<String> listTitle3 = [
    "1. التبرع بالمال.\n"
        "2. التبرع بالوقت للتطبيب الميداني المجاني والتمريض المجاني.\n"
        "3. إيواء المرضى الذين يسكنون بعيدًا مع مرافقيهم.\n"
        "4. التبرع بالأجهزة الطبية.\n"
        "5. توفير الدعم النفسي والعاطفي للمرضى وعائلاتهم.\n"
        "6. توفير وجبات غذائية للمرضى ومرافقيهم خلال فترات العلاج في المستشفى.\n"
        "7. توفير الرعاية الصحية الأساسية والأدوية للمرضى الذين ليس لديهم وسيلة للوصول إليها.\n"
  ].obs;
//================== 4  ====================
  RxList<String> listTitle4 = [
    "أمراض القلب هي مجموعة من الحالات التي تؤثر على عمل القلب والأوعية الدموية المحيطة وتعتبر الاصابة ب أمراض القلب هي السبب الرئيسي للوفاة في العديد من الدول و هناك العديد من الأشياء التي يمكن أن تزيد من خطر الإصابة ب أمراض القلب و يطلق عليهم عوامل الخطر بعضها لا يمكنك التحكم فيها و  لكن هناك الكثير من العوامل التي يمكنك التحكم فيها و التعرف عليها يمكن أن يقلل من خطر الإصابة ب أمراض القلب.\n"
        "\n"
        "وهناك العديد من امراض القلب أهمها : \n"
        "1. أمراض الشرايين التاجية :  وهي الحالة التي تحدث عندما تتضيق الشرايين التي تغذي العضلة القلبية بالدم، ويمكن أن يؤدي ذلك إلى نوبة قلبية.\n"
        "2. أمراض الصمامات القلبية : وهي الحالة التي تحدث عندما تكون الصمامات التي تسمح للدم بالتدفق باتجاه القلب والخروج منه غير فعالة، ويمكن أن تؤدي إلى تضخم القلب وعدم قدرته على القيام بوظيفته.\n"
        "3. الارتفاع في ضغط الدم : وهي الحالة التي تحدث عندما يكون ضغط الدم أعلى من المعدل الطبيعي، ويمكن أن يؤدي إلى تلف الأوعية الدموية وتدهور صحة القلب.\n"
        "\n"
        "اعراض امراض القلب \n"
        "تختلف اعراض امراض القلب وفقًا لنوع الحالة وشدتها أبرز اعراض امراض القلب : \n"
        "\n"
        "1. الم في الصدر : يكون الألم شديدًا أو متوسطًا  وقد يشعر الشخص بضغط أو ضيق في الصدر \n"
        "2. صعوبة بالتنفس : يمكن أن يكون التنفس صعبًا ومتقطعًا\n"
        "3. الدوخة و الاغماء : يشعر الشخص بالدوخة أو الإغماء بسبب نقص التروية الدموية إلى الدماغ\n"
        "4. التعرق الشديد :  يمكن أن يتعرق الشخص بشكل غير طبيعي، خاصةً عندما يشعر بالألم بالصدر\n"
        "5. الغثيان : يمكن أن يشعر الشخص بالغثيان والقيء\n"
        "\n"
        "أخطر أنواع أمراض القلب : \n"
        "1. النوبة القلبية :  وتعد النوبة القلبية من أخطر أنواع أمراض القلب، حيث يحدث توقف في تدفق الدم إلى القلب مما يؤدي إلى تلف جزء من العضلة القلبية\n"
        "2. الذبحة الصدرية : وهي حالة يشعر فيها الشخص بألم حاد في الصدر، يمكن أن يستمر لفترة وجيزة أو يزداد شدته مع الوقت، وهي تشير إلى وجود تضيق في الشرايين التاجية التي تغذي القلب بالدم، وإذا لم يتم علاجها\n "
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

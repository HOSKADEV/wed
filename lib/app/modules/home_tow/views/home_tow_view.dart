import 'package:SIDIA/app/core/components/buttons/primary_button_component.dart';
import 'package:SIDIA/app/core/components/others/description_component.dart';
import 'package:SIDIA/app/core/constants/icons_assets_constants.dart';
import 'package:SIDIA/app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:SIDIA/app/core/components/others/header_component.dart';

import 'package:SIDIA/app/core/constants/images_assets_constants.dart';
import 'package:SIDIA/app/core/constants/strings_assets_constants.dart';
import 'package:SIDIA/app/core/styles/colors.dart';
import 'package:SIDIA/app/modules/details/controllers/details_controller.dart';

import 'package:SIDIA/app/routes/app_pages.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/home_tow_controller.dart';
import 'components/home_card_component.dart';

class HomeTowView extends GetView<HomeTowController> {
  HomeTowView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // DetailsController detailsController = Get.put(DetailsController());
    return Scaffold(
      appBar: HeaderComponent(
        title: StringsAssetsConstants.home,
        isBack: false,
      ),
      backgroundColor: MainColors.backgroundColor(context),
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          width: double.infinity,
          height: 820.h,
          child: SingleChildScrollView(
            // physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                HomeTowCardComponent(
                  widthComponent: 410.w,
                  heightComponent: 270.h,
                  backgroundGradient: MainColors.primaryGradientColor,
                  backgroundImage: ImagesAssetsConstants.listImages1,
                ),
                SizedBox(
                  height: 20.h,
                ),
                descriptionCardComponent(
                    isIcon: false,
                    title: "التعريف بالمؤسسة واهم الخدمات  ",
                    description: description[0],
                    icon: "",
                    color: MainColors.whiteColor),
                Padding(
                  padding: EdgeInsets.all(15.h),
                  child: PrimaryButtonComponent(
                      icon: IconsAssetsConstants.whatsapp,
                      backgroundColor: MainColors.greenColor,
                      height: 70.h,
                      onTap: () {
                        launchAnotherApp();
                      },
                      text: "لطلب إحدى الخدمات تواصل معنا"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<String> description = [
    "نهدف من خلال تطبيق Sidia إلى تحسين جودة حياة مرضى السكري من خلال تقديم خدمات متكاملة تشمل:\n"
        " \n"
        "• رقمنة الملفات الطبية :\n"
        " \n"
        "-	إنشاء ملفات إلكترونية تتضمن معلومات العميل الصحية، وحالته الخاصة، وأنواع الأغذية والأدوية التي يحتاجها، وجداول زمنية لتناولها.\n"
        "-	توثيق طرق تقديم الخدمة والمستحقات المالية وغيرها من المعلومات الضرورية.\n"
        " \n"
        "• تطبيق إلكتروني متكامل:\n"
        " \n"
        "-	تصميم تطبيق يتيح للمستخدمين التواصل مع المؤسسة، والحصول على الخدمات بسهولة سواء كانوا داخل المنطقة أو خارجها.\n"
        "• مقر ثابت للتواصل:\n"
        " \n"
        "-	توفير مقر ثابت يمكن من خلاله تقديم الدعم والتواصل المباشر مع العملاء.\n"
        " \n"
        "• خدمة توصيل مستمرة:\n"
        " \n"
        "-	 نقدم خدمة توصيل مستمرة على مدار الساعة، سبعة أيام في الأسبوع، داخل المنطقة وخارجها. تتضمن هذه الخدمة توصيل الأغذية المناسبة لمرضى السكري، والتي تم اختيارها بعناية لتتماشى مع متطلباتهم الصحية ونظامهم الغذائي المحدد. نحرص على أن تكون الأطعمة المقدمة متوازنة ومناسبة للحفاظ على مستويات السكر في الدم ضمن المعدلات الصحية، مما يسهم في تحسين جودة حياة المرضى.\n"
        " \n"
        "• خدمات طبية مضافة:\n"
        " \n"
        "-	 تقديم خدمات طبية متنوعة تشمل برمجة الزيارات المنزلية للحالات الخاصة.\n"
        "-	 إمكانية طلب هذه الخدمات عبر الواتساب، لتوفير الدعم الفوري والشامل.\n"
        " \n"
        "نسعى من خلال هذا تطبيق إلى توفير راحة البال لمرضى السكري وعائلاتهم من خلال خدماتنا المتميزة والشاملة.\n"
  ];
  void launchAnotherApp() async {
    var phoneNumber = "+213669164641";
    var url = 'https://wa.me/$phoneNumber';
    if (!await launchUrl(Uri.parse(url),
        mode: LaunchMode.externalApplication)) {
      throw 'Could not launch ';
    }
  }
}

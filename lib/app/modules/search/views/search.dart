import 'package:travelPal/app/core/components/buttons/primary_button_component.dart';
import 'package:travelPal/app/core/components/inputs/dropdown_component.dart';
import 'package:travelPal/app/core/components/inputs/text_input_component.dart';
import 'package:travelPal/app/core/constants/strings_assets_constants.dart';
import 'package:travelPal/app/core/styles/text_styles.dart';
import 'package:travelPal/app/core/utils/validator_util.dart';
import 'package:travelPal/app/modules/home/controllers/home_controller.dart';
import 'package:travelPal/app/modules/search/controllers/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
// import 'package:travelPal/app/core/components/others/description_component.dart';
import 'package:travelPal/app/core/components/others/header_component.dart';
import 'package:travelPal/app/core/constants/icons_assets_constants.dart';
import 'package:travelPal/app/core/styles/colors.dart';
// import 'package:travelPal/app/modules/description_view/controllers/description_controller.dart';
// import 'package:travelPal/app/modules/details/controllers/details_controller.dart';
// import 'package:travelPal/app/modules/details/views/components/detalis_component.dart';

class SearchView extends GetView<SearchControllerG> {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      appBar: HeaderComponent(
        title: "البحث عن رفيق للسفر ",
      ),
      body: SafeArea(
        child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "اتمم ادخال المعلومات التالية للبحث عن رفيق لسفرك: ",
                                style: TextStyles.largeBodyTextStyle(context)
                                    .copyWith(fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextInputComponent(
                        validate: (value) =>
                            ValidatorUtil.stringLengthValidation(value, 3,
                                customMessage: 'يرجى التحقق من  ادخال الاسم'),
                        controller: controller.nameController,
                        hint: "يرجى إدخال الاسم الكامل",
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextInputComponent(
                        validate: (value) => ValidatorUtil.numericValidation(
                            value,
                            customMessage: 'يرجى التحقق من  ادخال رقم الهاتف'),
                        textInputType: TextInputType.phone,
                        controller: controller.phoneController,
                        hint: "يرجى إدخال رقم الهاتف",
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextInputComponent(
                        validate: (value) =>
                            ValidatorUtil.stringLengthValidation(value, 3,
                                customMessage:
                                    'يرجى التحقق من  ادخال تفاصيل السفر'),
                        controller: controller.detailsController,
                        hint: "يرجى إدخال تفاصيل السفر",
                        maxLines: 3,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Obx(
                        () => controller.selectedItem.value != null
                            ? DropdownComponent(
                                hint: "ادخل نوع الرفيق الذي تبحث عنه",
                                width: 400.w,
                                selectedItem:
                                    controller.selectedUnitOfGo.value?.title ==
                                            null
                                        ? controller.ListOfDepartureCities[0]
                                        : controller.selectedUnitOfGo.value,
                                dataList: controller.ListOfDepartureCities,
                                onSelectedItem: (value) {
                                  controller.selectedUnitOfGo.value = value;
                                  print(value!.title.toString());
                                  controller.tripTypeController.text =
                                      value!.title.toString();
                                },
                              )
                            : SizedBox(),
                      ),
                      // SizedBox(
                      //   height: 140.h,
                      // ),
                      SizedBox(
                        height: 50.h,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "ملاحظة : ",
                                style: TextStyles.largeBodyTextStyle(context)
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: MainColors.errorColor(context)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 400.w,
                        child: Padding(
                          padding: EdgeInsets.all(5.r),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  "بعد ارسال بيانتكم عبر الواتساب سيتم مراجعتها والاتصال بكم لتحديد الرفيق المناسب لكم  في السفر",
                                  style: TextStyles.largeBodyTextStyle(context)
                                      .copyWith(
                                    fontWeight: FontWeight.normal,
                                  ),
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      PrimaryButtonComponent(
                          backgroundColor: MainColors.greenColor,
                          height: 70.h,
                          onTap: () {
                            controller.villeOfGo = homeController
                                .selectedUnitOfGo.value!.title
                                .toString();
                            controller.villeOfArrival = homeController
                                .selectedUnitOfArrival.value!.title
                                .toString();
                            print(controller.villeOfGo);
                            print(controller.villeOfArrival);

                            controller.name = controller.nameController.text;
                            controller.phone = controller.phoneController.text;
                            controller.details =
                                controller.detailsController.text;
                            controller.tripType =
                                controller.tripTypeController.text == ""
                                    ? controller.ListOfDepartureCities[0].title
                                        .toString()
                                    : controller.tripTypeController.text;

                            controller.sendData();
                          },
                          icon: IconsAssetsConstants.whatsapp,
                          text: "ارسل البيانات للمراجعة"),
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}

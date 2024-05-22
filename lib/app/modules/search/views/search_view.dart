import 'package:CNIQUE/app/core/components/buttons/primary_button_component.dart';
import 'package:CNIQUE/app/core/components/inputs/text_input_component.dart';
import 'package:CNIQUE/app/core/styles/text_styles.dart';
import 'package:CNIQUE/app/core/utils/validator_util.dart';
import 'package:CNIQUE/app/modules/search/controllers/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:CNIQUE/app/core/components/others/description_component.dart';
import 'package:CNIQUE/app/core/components/others/header_component.dart';
import 'package:CNIQUE/app/core/constants/icons_assets_constants.dart';
import 'package:CNIQUE/app/core/styles/colors.dart';
import 'package:CNIQUE/app/modules/description_view/controllers/description_controller.dart';
import 'package:CNIQUE/app/modules/details/controllers/details_controller.dart';
import 'package:CNIQUE/app/modules/details/views/components/detalis_component.dart';

class SearchView extends GetView<SearchedController> {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderComponent(
        title: "البحث عن قطعة غيار",
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
                                "أدخل المعلومات اللازمة لطلب القطعة",
                                style: TextStyles.largeBodyTextStyle(context)
                                    .copyWith(fontWeight: FontWeight.bold),
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
                                customMessage:
                                    'يرجى التحقق من  ادخال اسم السيارة'),
                        controller: controller.nameCarController,
                        hint: "ادخل اسم السيارة ",
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      TextInputComponent(
                        validate: (value) => ValidatorUtil.numericValidation(
                            value,
                            customMessage:
                                'يرجى التحقق من  ادخال الرقم التسلسلي'),
                        controller: controller.numberSrialController,
                        textInputType: TextInputType.number,
                        hint: "ادخل الرقم التسلسلي ",
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      TextInputComponent(
                        validate: (value) =>
                            ValidatorUtil.stringLengthValidation(value, 3,
                                customMessage: 'يرجى التحقق من  ادخال الصنف'),
                        controller: controller.catigoryController,
                        hint: "ادخل الصنف ",
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      TextInputComponent(
                        validate: (value) =>
                            ValidatorUtil.stringLengthValidation(value, 3,
                                customMessage: 'يرجى التحقق من  ادخال الطراز'),
                        controller: controller.modelController,
                        hint: " ادخل الطراز  ",
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      TextInputComponent(
                        validate: (value) => ValidatorUtil.numericValidation(
                            value,
                            customMessage:
                                'يرجى التحقق من  ادخال سنة اول استعمال'),
                        controller: controller.yearOfFirstUseController,
                        textInputType: TextInputType.number,
                        hint: "ادخل سنة اول استعمال",
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      TextInputComponent(
                        validate: (value) =>
                            ValidatorUtil.stringLengthValidation(value, 3,
                                customMessage:
                                    'يرجى التحقق من  ادخال نوع الطاقة'),
                        controller: controller.powerTypeController,
                        hint: "أدخل نوع الطاقة ",
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      TextInputComponent(
                        validate: (value) =>
                            ValidatorUtil.stringLengthValidation(value, 3,
                                customMessage:
                                    'يرجى التحقق من  ادخال اسم قطعة الغيار'),
                        controller: controller.sparePartNameController,
                        hint: "ادخل اسم قطعة الغيار ",
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      TextInputComponent(
                        validate: (value) => ValidatorUtil.numericValidation(
                            value,
                            customMessage:
                                'يرجى التحقق من  ادخال رقم قطعة الغيار '),
                        controller: controller.sparePartNumberController,
                        hint: "ادخل رقم قطعة الغيار ",
                        textInputType: TextInputType.number,
                      ),
                      SizedBox(
                        height: 5.h,
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
                                  "بعد ارسال بيانتكم عبر الواتساب سيتم مراجعتها والاتصال بكم ",
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
                        height: 10.h,
                      ),
                      PrimaryButtonComponent(
                          backgroundColor: MainColors.greenColor,
                          height: 70.h,
                          onTap: () {
                            controller.sendData();
                          },
                          icon: IconsAssetsConstants.whatsapp,
                          text: "أطلب الان ")
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}

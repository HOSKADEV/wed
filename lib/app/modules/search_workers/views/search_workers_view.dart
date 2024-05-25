import 'package:dolani/app/core/components/buttons/primary_button_component.dart';
import 'package:dolani/app/core/components/inputs/dropdown_component.dart';
import 'package:dolani/app/core/components/inputs/text_input_component.dart';
import 'package:dolani/app/core/constants/images_assets_constants.dart';
import 'package:dolani/app/core/styles/text_styles.dart';
import 'package:dolani/app/core/utils/validator_util.dart';
import 'package:dolani/app/modules/search_job/controllers/search_job_controller.dart';
import 'package:dolani/app/modules/search_workers/controllers/search_workers_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:dolani/app/core/components/others/description_component.dart';
import 'package:dolani/app/core/components/others/header_component.dart';
import 'package:dolani/app/core/constants/icons_assets_constants.dart';
import 'package:dolani/app/core/styles/colors.dart';
// import 'package:dolani/app/modules/description_view/controllers/description_controller.dart';
// import 'package:dolani/app/modules/details/controllers/details_controller.dart';
// import 'package:dolani/app/modules/details/views/components/detalis_component.dart';

class SearchWorkersView extends GetView<SearchWorkersController> {
  const SearchWorkersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderComponent(
        title: "البحث عن عمال ",
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
                      SizedBox(
                        height: 180.h,
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.r),
                          child: Image.asset(
                            ImagesAssetsConstants.listImages5,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "أدخل المعلومات اللازمة للبحث عن عمال:",
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
                                    'يرجى التحقق من  ادخال  نوع العمل المطلوب '),
                        controller: controller.nameCarController,
                        hint:
                            "ادخل نوع العمل المطلوب ( حرفي ،بناء ، مهندس ،... الخ )",
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      TextInputComponent(
                        validate: (value) =>
                            ValidatorUtil.stringLengthValidation(value, 3,
                                customMessage:
                                    'يرجى التحقق من  ادخال مكان العمل '),
                        controller: controller.oldController,
                        hint: "ادخل مكان العمل ",
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      TextInputComponent(
                        validate: (value) => ValidatorUtil.numericValidation(
                            value,
                            customMessage:
                                'يرجى التحقق من  ادخال عدد العمال المطلوب '),
                        controller: controller.jobController,
                        hint: "ادخل عدد العمال المطلوب ",
                        maxLength: 3,
                        textInputType: TextInputType.number,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      TextInputComponent(
                        validate: (value) =>
                            ValidatorUtil.stringLengthValidation(value, 0,
                                customMessage:
                                    'يرجى التحقق ادخل الشهادة او المؤهل '),
                        controller: controller.certificateController,
                        hint: " ادخل الشهادة او المؤهل ( اختياري)",
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Obx(
                        () => controller.selectedItem.value != null
                            ? DropdownComponent(
                                hint: "توقيت العمل ",
                                width: 430.w,
                                selectedItem:
                                    controller.selectedTimeJob.value?.title ==
                                            null
                                        ? null
                                        : controller.selectedTimeJob.value,
                                dataList: controller.ListOfTimeJob,
                                onSelectedItem: (value) {
                                  controller.selectedTimeJob.value = value;
                                  print(value!.title.toString());
                                },
                              )
                            : SizedBox(),
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

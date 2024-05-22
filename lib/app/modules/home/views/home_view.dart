import 'package:travelPal/app/core/components/buttons/icon_button_component.dart';
import 'package:travelPal/app/core/components/buttons/primary_button_component.dart';
import 'package:travelPal/app/core/components/inputs/dropdown_component.dart';
import 'package:travelPal/app/core/components/others/toast_component.dart';
import 'package:travelPal/app/core/constants/icons_assets_constants.dart';
import 'package:travelPal/app/core/styles/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:travelPal/app/core/components/others/header_component.dart';

import 'package:travelPal/app/core/constants/images_assets_constants.dart';
import 'package:travelPal/app/core/constants/strings_assets_constants.dart';
import 'package:travelPal/app/core/styles/colors.dart';
import 'package:travelPal/app/modules/details/controllers/details_controller.dart';

import 'package:travelPal/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';
import 'components/home_card_component.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // DetailsController detailsController = Get.put(DetailsController());

    return Scaffold(
      appBar: const HeaderComponent(
        isAboutInfo: true,
        isBack: false,
        title: "اختر رفيق سفرك",
      ),
      body: SizedBox(
        height: 928.h,
        child: Stack(
          children: [
            HomeCardComponent(
                widthComponent: 440.w,
                heightComponent: 300.h,
                indexOfpage: 0.obs,
                title: "",
                backgroundGradient: MainColors.primaryGradientColor,
                backgroundImage: ImagesAssetsConstants.listImages1,
                onTap: () {}),
            Positioned(
              bottom: 190.h,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 40.w, right: 20.w, top: 10.h, bottom: 10.h),
                child: Container(
                  width: 390.w,
                  decoration: BoxDecoration(
                      color: MainColors.whiteColor,
                      border: Border.all(color: MainColors.gryColor),
                      borderRadius: BorderRadius.all(Radius.circular(20.r))),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 30.w, right: 30.w, top: 20.h, bottom: 20.h),
                    child: Column(
                      children: [
                        Container(
                          width: 390.w,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "الانطلاق من :",
                                style: TextStyles.largeBodyTextStyle(context)
                                    .copyWith(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Obx(
                          () => controller.selectedItem.value != null
                              ? DropdownComponent(
                                  selectedItem:
                                      controller.selectedUnitOfGo.value,
                                  dataList: controller.ListOfDepartureCities,
                                  onSelectedItem: (value) {
                                    controller.selectedUnitOfGo.value = value;
                                    print(value!.title.toString());
                                  },
                                )
                              : SizedBox(),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 390.h,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "التوجه الى :",
                                style: TextStyles.largeBodyTextStyle(context)
                                    .copyWith(fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Obx(
                          () => controller.selectedItem.value != null
                              ? DropdownComponent(
                                  selectedItem:
                                      controller.selectedUnitOfArrival.value,
                                  dataList: controller.ListOfArrivalCities,
                                  onSelectedItem: (value) {
                                    controller.selectedUnitOfArrival.value =
                                        value;
                                    print(value!.title.toString());
                                  },
                                )
                              : SizedBox(),
                        ),
                        SizedBox(height: 20),
                        PrimaryButtonComponent(
                          width: 420.h,
                          backgroundColor: MainColors.infoColor(context),
                          onTap: () {
                            if (controller.selectedUnitOfGo.value == null) {
                              // print("true");
                              ToastComponent().showToast(context,
                                  message: "الرجاء تحديد مدينة الانطلاق",
                                  type: ToastTypes.warning);
                            } else {
                              if (controller.selectedUnitOfArrival.value ==
                                  null) {
                                // print("true");
                                ToastComponent().showToast(context,
                                    message:
                                        "الرجاء تحديد المدينة المتوجه اليه",
                                    type: ToastTypes.warning);
                              } else {
                                Get.toNamed(Routes.SEARCH);
                              }
                            }
                            //
                          },
                          icon: IconsAssetsConstants.searchIcon,
                          text: '  البحث',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Positioned(
            //   bottom: 40.h,
            //   left: 30.h,
            //   right: 30.h,
            //   child: PrimaryButtonComponent(
            //     // borderColor: MainColors.gryColor,
            //     width: 470.h,
            //     backgroundColor: MainColors.gryColor,
            //     onTap: () {
            //       Get.toNamed(Routes.SEARCH);
            //     },
            //     // iconcolor: MainColors.ص,
            //     icon: IconsAssetsConstants.infoIcon,
            //     text: '  عن التطبيق',
            //     // textColor: MainColors.blackColor,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

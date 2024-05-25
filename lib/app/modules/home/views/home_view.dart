import 'package:dolani/app/core/components/buttons/primary_button_component.dart';
import 'package:dolani/app/core/components/others/description_component.dart';
// import 'package:dolani/app/modules/details/views/components/detalis_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:dolani/app/core/components/others/header_component.dart';

import 'package:dolani/app/core/constants/images_assets_constants.dart';
import 'package:dolani/app/core/constants/strings_assets_constants.dart';
import 'package:dolani/app/core/styles/colors.dart';
// import 'package:dolani/app/modules/details/controllers/details_controller.dart';

import 'package:dolani/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';
// import 'components/home_card_component.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
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
            child: Column(
              children: [
                Container(
                  constraints: BoxConstraints(minHeight: 400.h),
                  width: double.infinity,
                  child: descriptionCardComponent(
                      title: StringsAssetsConstants.listTitle1,
                      description: controller.listTitle1[0],
                      icon: ImagesAssetsConstants.listImages1,
                      color: MainColors.whiteColor),
                ),

                // Container(
                //   child: Padding(
                //     padding: EdgeInsets.all(5.h),
                //     child: HomeCardComponent(
                //       widthComponent: 410.w,
                //       indexOfpage: 0.obs,
                //       heightComponent: 100.h,
                //       backgroundGradient: MainColors.primaryGradientColor,
                //       title: "",
                //       backgroundImage: ImagesAssetsConstants.listImages1,
                //       onTap: () => Get.toNamed(Routes.DETAILS),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 20.h,
                // ),
                SizedBox(
                  height: 40.h,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(5.h),
                    child: PrimaryButtonComponent(
                      text: "البحث عن عمل ",
                      backgroundColor: MainColors.whiteColor,
                      height: 90.h,
                      borderColor: MainColors.gryColor,
                      textColor: Color(0xFFC30B0B),

                      width: 400.w,
                      image: ImagesAssetsConstants.listImages2,
                      // widthComponent: 410.w,
                      // indexOfpage: 0.obs,
                      // heightComponent: 200.h,
                      // backgroundGradient: MainColors.primaryGradientColor,
                      // title: "البحث عن قطعة غيار ",
                      // backgroundImage: ImagesAssetsConstants.listImages2,
                      onTap: () => Get.toNamed(Routes.SEARCHJOB),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(5.h),
                    child: PrimaryButtonComponent(
                      text: "البحث عن عامل  ",
                      backgroundColor: MainColors.whiteColor,
                      height: 90.h,
                      borderColor: MainColors.gryColor,
                      textColor: Color(0xFFC30B0B),

                      width: 400.w,
                      image: ImagesAssetsConstants.listImages3,
                      // widthComponent: 410.w,
                      // indexOfpage: 0.obs,
                      // heightComponent: 200.h,
                      // backgroundGradient: MainColors.primaryGradientColor,
                      // title: "البحث عن قطعة غيار ",
                      // backgroundImage: ImagesAssetsConstants.listImages2,
                      onTap: () => Get.toNamed(Routes.SEARCHWORKERS),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                // Container(
                //   child: Padding(
                //     padding: EdgeInsets.all(5.h),
                //     child: HomeCardComponent(
                //       widthComponent: 410.w,
                //       indexOfpage: 1.obs,
                //       heightComponent: 200.h,
                //       backgroundGradient: MainColors.primaryGradientColor,
                //       title: "متاجر قريبة منك",
                //       backgroundImage: ImagesAssetsConstants.listImages3,
                //       onTap: () => Get.toNamed(Routes.DETAILS),
                //     ),
                //   ),
                // ),
                // SizedBox(
                //   height: 10.h,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

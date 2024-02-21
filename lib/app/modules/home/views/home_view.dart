import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wed/app/core/components/others/header_component.dart';

import 'package:wed/app/core/constants/images_assets_constants.dart';
import 'package:wed/app/core/constants/strings_assets_constants.dart';
import 'package:wed/app/core/styles/colors.dart';
import 'package:wed/app/modules/categories/controllers/categories_controller.dart';

import 'package:wed/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';
import 'components/home_card_component.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Get.put(CategoriesController());
    return Scaffold(
        appBar: HeaderComponent(
          title: StringsAssetsConstants.home,
          isBack: false,
        ),
        backgroundColor: MainColors.backgroundColor(context),
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.all(10.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeCardComponent(
                          indexOfpage: 0.obs,
                          backgroundGradient: MainColors.primaryGradientColor,
                          title: StringsAssetsConstants.delayedMarriage,
                          backgroundImage:
                              ImagesAssetsConstants.delayedMarriage,
                          onTap: () => Get.toNamed(Routes.CENTERS),
                        ),
                        HomeCardComponent(
                          indexOfpage: 1.obs,
                          backgroundGradient: MainColors.primaryGradientColor,
                          title: StringsAssetsConstants.areAboutToMarried,
                          // count: AppData.centresData.length,
                          backgroundImage:
                              ImagesAssetsConstants.areAboutToMarried,
                          onTap: () => Get.toNamed(Routes.CENTERS),
                        ),
                        //

                        // SizedBox(width: 10.w),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Padding(
                    padding: EdgeInsets.all(10.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // SizedBox(width: 10.w),
                        HomeCardComponent(
                          indexOfpage: 2.obs,
                          backgroundGradient: MainColors.primaryGradientColor,
                          title: StringsAssetsConstants.newlyMarried,
                          // count: AppData.centresData.length,
                          backgroundImage: ImagesAssetsConstants.newlyMarried,
                          onTap: () => Get.toNamed(Routes.CENTERS),
                        ),

                        HomeCardComponent(
                          indexOfpage: 3.obs,
                          backgroundGradient: MainColors.primaryGradientColor,
                          title: StringsAssetsConstants.goingDifficultPeriod,
                          // count: AppData.centresData.length,
                          backgroundImage:
                              ImagesAssetsConstants.goingDifficultPeriod,
                          onTap: () => Get.toNamed(Routes.CENTERS),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Padding(
                    padding: EdgeInsets.all(10.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeCardComponent(
                          indexOfpage: 4.obs,
                          backgroundGradient: MainColors.primaryGradientColor,
                          title: StringsAssetsConstants.divorce,
                          // count: AppData.centresData.length,
                          backgroundImage: ImagesAssetsConstants.divorce,
                          onTap: () => Get.toNamed(Routes.CENTERS),
                        ),
                        HomeCardComponent(
                          indexOfpage: 5.obs,
                          backgroundGradient: MainColors.primaryGradientColor,
                          title: StringsAssetsConstants.parents,
                          // count: AppData.centresData.length,
                          backgroundImage: ImagesAssetsConstants.parents,
                          onTap: () => Get.toNamed(Routes.CENTERS),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),
                  Padding(
                    padding: EdgeInsets.all(10.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomeCardComponent(
                          indexOfpage: 6.obs,
                          backgroundGradient: MainColors.primaryGradientColor,
                          title: StringsAssetsConstants.rating,
                          backgroundImage: ImagesAssetsConstants.rating,
                          onTap: () => Get.toNamed(Routes.CENTERS),
                        ),

                        // SizedBox(width: 10.w),
                        HomeCardComponent(
                          indexOfpage: 7.obs,
                          backgroundGradient: MainColors.primaryGradientColor,
                          title: StringsAssetsConstants.consultingSolutions,
                          // count: AppData.centresData.length,
                          backgroundImage:
                              ImagesAssetsConstants.consultingSolutions,
                          onTap: () => Get.toNamed(Routes.CENTERS),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),

                  Padding(
                    padding: EdgeInsets.all(10.r),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HomeCardComponent(
                          indexOfpage: 8.obs,
                          widthComponent: 370.w,
                          backgroundGradient: MainColors.primaryGradientColor,
                          title: StringsAssetsConstants.advice,
                          // count: AppData.centresData.length,
                          backgroundImage: ImagesAssetsConstants.advice,
                          onTap: () => Get.toNamed(Routes.CENTERS),
                        ),

                        // SizedBox(width: 10.w),
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),
                ],
              ),
            ),
          ),
        ));
  }
}

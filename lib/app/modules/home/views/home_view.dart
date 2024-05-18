import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:SIDIA/app/core/components/others/header_component.dart';

import 'package:SIDIA/app/core/constants/images_assets_constants.dart';
import 'package:SIDIA/app/core/constants/strings_assets_constants.dart';
import 'package:SIDIA/app/core/styles/colors.dart';
import 'package:SIDIA/app/modules/details/controllers/details_controller.dart';

import 'package:SIDIA/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';
import 'components/home_card_component.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    DetailsController detailsController = Get.put(DetailsController());
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
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(5.h),
                    child: HomeCardComponent(
                      widthComponent: 410.w,
                      indexOfpage: 4.obs,
                      heightComponent: 180.h,
                      backgroundGradient: MainColors.primaryGradientColor,
                      title: "",
                      backgroundImage: ImagesAssetsConstants.listImages1,
                      onTap: () => Get.toNamed(Routes.DETAILS),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Padding(
                  padding: EdgeInsets.all(5.h),
                  child: Container(
                    height: 770.h,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      // separatorBuilder: (context, index) => SizedBox(
                      //   height: 20.h,
                      // ),
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: detailsController.listOfImage.length - 1,
                      itemBuilder: (context, index) {
                        if (index == detailsController.listOfImage.length - 1) {
                          return Container(
                            child: Padding(
                              padding: EdgeInsets.all(5.h),
                              child: HomeCardComponent(
                                  heightComponent: 160.h,
                                  indexOfpage: index.obs,
                                  backgroundGradient:
                                      MainColors.primaryGradientColor,
                                  title: detailsController.listOfTitle[index],
                                  backgroundImage:
                                      detailsController.listOfImage[index],
                                  onTap: () {
                                    print(index);
                                    if (index == 0) {
                                      Get.toNamed(Routes.Description);
                                    } else {
                                      Get.toNamed(Routes.DETAILS);
                                    }
                                  }

                                  // Get.toNamed(Routes.DETAILS),
                                  ),
                            ),
                          );
                        } else {
                          return Container(
                            child: Padding(
                              padding: EdgeInsets.all(5.h),
                              child: HomeCardComponent(
                                indexOfpage: index.obs,
                                heightComponent: 160.h,
                                backgroundGradient:
                                    MainColors.primaryGradientColor,
                                title: detailsController.listOfTitle[index],
                                backgroundImage:
                                    detailsController.listOfImage[index],
                                onTap: () => Get.toNamed(Routes.DETAILS),
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

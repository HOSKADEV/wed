import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:HANINI/app/core/components/others/header_component.dart';

import 'package:HANINI/app/core/constants/images_assets_constants.dart';
import 'package:HANINI/app/core/constants/strings_assets_constants.dart';
import 'package:HANINI/app/core/styles/colors.dart';
import 'package:HANINI/app/modules/details/controllers/details_controller.dart';

import 'package:HANINI/app/routes/app_pages.dart';

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
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              width: double.infinity,
              height: 820.h,
              child: Column(
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Container(
                    height: 770.h,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(
                        height: 20.h,
                      ),
                      itemCount: detailsController.listOfImage.length,
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
                ],
              ),
            ),
          ),
        ));
  }
}

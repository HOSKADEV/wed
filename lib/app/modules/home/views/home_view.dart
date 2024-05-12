import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:wed/app/core/components/others/header_component.dart';

import 'package:wed/app/core/constants/images_assets_constants.dart';
import 'package:wed/app/core/constants/strings_assets_constants.dart';
import 'package:wed/app/core/styles/colors.dart';
import 'package:wed/app/modules/details/controllers/details_controller.dart';

import 'package:wed/app/routes/app_pages.dart';

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
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.r,
                  mainAxisSpacing: 10.r,
                  childAspectRatio: 1.1 / 1,
                ),
                itemCount: detailsController.listOfImage.length,
                itemBuilder: (context, index) {
                  if (index == detailsController.listOfImage.length - 1) {
                    return Padding(
                      padding: EdgeInsets.all(5.h),
                      child: HomeCardComponent(
                        indexOfpage: index.obs,
                        backgroundGradient: MainColors.primaryGradientColor,
                        title: detailsController.listOfTitle[index],
                        backgroundImage: detailsController.listOfImage[index],
                        onTap: () => Get.toNamed(Routes.DETAILS),
                      ),
                    );
                  } else {
                    return Padding(
                      padding: EdgeInsets.all(5.h),
                      child: HomeCardComponent(
                        indexOfpage: index.obs,
                        backgroundGradient: MainColors.primaryGradientColor,
                        title: detailsController.listOfTitle[index],
                        backgroundImage: detailsController.listOfImage[index],
                        onTap: () => Get.toNamed(Routes.DETAILS),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ));
  }
}
////////////////////////////////////////////////////////////////////
// body: SafeArea(
        //   bottom: false,
        //   child: SingleChildScrollView(
        //     physics: const BouncingScrollPhysics(),
        //     child: SizedBox(
        //         width: double.infinity,
        //         height: 820.h,
        //         child: ListView.separated(
        //             itemBuilder: (context, index) => HomeCardComponent(
        //                   indexOfpage: index.obs,
        //                   backgroundGradient: MainColors.primaryGradientColor,
        //                   title: detailsController.listOfTitle[index],
        //                   backgroundImage: detailsController.listOfImage[index],
        //                   onTap: () => Get.toNamed(Routes.DETAILS),
        //                 ),
        //             separatorBuilder: (context, index) => SizedBox(
        //                   height: 10.h,
        //                 ),
        //             itemCount: detailsController.listOfImage.length)),
        //   ),
        // ),
        ///////////////////////////////////////////////////////////////////////
import 'package:SIDIA/app/core/constants/images_assets_constants.dart';
import 'package:SIDIA/app/core/constants/strings_assets_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:SIDIA/app/core/components/buttons/primary_button_component.dart';
import 'package:SIDIA/app/core/components/others/header_component.dart';
import 'package:SIDIA/app/core/constants/icons_assets_constants.dart';
import 'package:SIDIA/app/core/styles/colors.dart';
import 'package:SIDIA/app/core/styles/text_styles.dart';
import 'package:SIDIA/app/modules/details/controllers/details_controller.dart';
import 'package:SIDIA/app/modules/details/views/components/detalis_component.dart';
import 'package:SIDIA/app/modules/home/views/components/home_card_component.dart';
import 'package:SIDIA/app/modules/sub_details/controllers/sub_details_controller.dart';
import 'package:SIDIA/app/routes/app_pages.dart';

class DetailsView extends GetView<DetailsController> {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    SubDetailsController subDetailsController = Get.put(SubDetailsController());
    return Scaffold(
      appBar: HeaderComponent(
        title: controller.listOfTitle[controller.indexOfpage.value],
      ),
      body: SafeArea(
        child: controller.indexOfpage.value == 4
            ? Container(
                height: 820.h,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(10.h),
                    child: Container(
                      constraints: BoxConstraints(minHeight: 400.h),
                      width: double.infinity,
                      child: DetalisCardComponent(
                          title: StringsAssetsConstants.listTitle1,
                          description: controller.listTitle1[0],
                          icon: ImagesAssetsConstants.listImages1,
                          color: MainColors.whiteColor),
                    ),
                  ),
                ),
              )
            : SizedBox(
                width: double.infinity,
                child: controller
                            .createLists()[controller.indexOfpage.value]
                            .length ==
                        1
                    ? Container(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.h),
                                child: Container(
                                  constraints: BoxConstraints(minHeight: 400.h),
                                  width: double.infinity,
                                  child: DetalisCardComponent(
                                      title: controller.listOfTitle[
                                          controller.indexOfpage.value],
                                      description: controller
                                          .createLists()[
                                              controller.indexOfpage.value][0]
                                          .toString(),
                                      icon: controller.listOfImage[
                                          controller.indexOfpage.value],
                                      color: MainColors.whiteColor),
                                ),
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              // controller.indexOfpage.value == 0
                              // ? SizedBox()
                              // :
                              Padding(
                                padding: EdgeInsets.all(15.h),
                                child: PrimaryButtonComponent(
                                    icon: IconsAssetsConstants.whatsapp,
                                    backgroundColor: MainColors.greenColor,
                                    height: 70.h,
                                    onTap: () {
                                      launchAnotherApp();
                                    },
                                    text: controller.textOfBottonWhatsApp[
                                        controller.indexOfpage.value]),
                              )
                            ],
                          ),
                        ),
                      )
                    : Column(
                        children: [
                          Expanded(
                              child: ListView.separated(
                            physics: const BouncingScrollPhysics(),
                            padding: EdgeInsets.symmetric(
                                horizontal: 25.w, vertical: 30.h),
                            itemBuilder: (context, index) {
                              return PrimaryButtonComponent(
                                  borderColor:
                                      MainColors.gryColor.withOpacity(0.6),
                                  height: 75.h,
                                  textColor: MainColors.blackColor,
                                  onTap: () async {
                                    print(controller.indexListOflist1[index]);
                                    if (controller.indexListOflist1[index] <=
                                        1) {
                                      launchAnotherApp();
                                    } else {
                                      // subDetailsController.indexOfpage.value = 0;
                                      Get.toNamed(Routes.SUBDETAILS);
                                    }
                                  },
                                  text: controller
                                      .createLists()[
                                          controller.indexOfpage.value][index]
                                      .toString());
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(height: 15.h);
                            },
                            itemCount: controller
                                .createLists()[controller.indexOfpage.value]
                                .length,
                          )),
                        ],
                      ),
              ),
      ),
    );
  }

  void launchAnotherApp() async {
    var phoneNumber = "+213673625414";
    var url = 'https://wa.me/$phoneNumber';
    if (!await launchUrl(Uri.parse(url),
        mode: LaunchMode.externalApplication)) {
      throw 'Could not launch ';
    }
  }
}

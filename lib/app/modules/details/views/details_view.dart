import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wed/app/core/components/buttons/primary_button_component.dart';
import 'package:wed/app/core/components/others/header_component.dart';
import 'package:wed/app/core/constants/icons_assets_constants.dart';
import 'package:wed/app/core/styles/colors.dart';
import 'package:wed/app/core/styles/text_styles.dart';
import 'package:wed/app/modules/details/controllers/details_controller.dart';
import 'package:wed/app/modules/home/views/components/home_card_component.dart';

class DetailsView extends GetView<DetailsController> {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderComponent(
        title: controller.listOfTitle[controller.indexOfpage.value],
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: controller
                      .createLists()[controller.indexOfpage.value]
                      .length ==
                  1
              ? Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.h),
                      child: Container(
                        width: double.infinity,
                        height: 400.h,
                        child: AttractiveCard(
                            title: controller
                                .listOfTitle[controller.indexOfpage.value],
                            description: controller
                                .createLists()[controller.indexOfpage.value][0]
                                .toString(),
                            icon: IconsAssetsConstants.refreshIcon,
                            color: MainColors.whiteColor),
                      ),
                    ),
                    SizedBox(
                      height: 100.h,
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.h),
                      child: PrimaryButtonComponent(
                          icon: IconsAssetsConstants.whatsapp,
                          backgroundColor: MainColors.greenColor,
                          height: 70.h,
                          onTap: () {
                            launchAnotherApp();
                            // print("))))))))))))))");
                          },
                          text: "تواصل معنا عبر الواتساب"),
                    )
                  ],
                )
              : Column(
                  children: [
                    Expanded(
                        child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.w, vertical: 30.h),
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () async {
                            launchAnotherApp();
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.w, vertical: 20.h),
                            decoration: BoxDecoration(
                              color: MainColors.backgroundColor(context),
                              borderRadius: BorderRadius.circular(12.r),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(0, 0),
                                  blurRadius: 10.r,
                                  color: MainColors.textColor(context)!
                                      .withOpacity(0.14),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Flexible(
                                    child: Text(
                                  controller
                                      .createLists()[
                                          controller.indexOfpage.value][index]
                                      .toString(),
                                  style:
                                      TextStyles.mediumBodyTextStyle(context),
                                )),
                              ],
                            ),
                          ),
                        );
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
    var phoneNumber = "+213697326375";
    var url = 'https://wa.me/$phoneNumber';
    if (!await launchUrl(Uri.parse(url),
        mode: LaunchMode.externalApplication)) {
      throw 'Could not launch ';
    }
  }
}

class AttractiveCard extends StatelessWidget {
  final String title;
  final String description;
  final String icon;
  final Color color;

  AttractiveCard(
      {required this.title,
      required this.description,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.h),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(5, 10),
          ),
        ],
        border: Border(
          top: BorderSide(
            color: Colors.grey.withOpacity(0.5), // specify your color here
            width: 0.3, // specify the width of the border
          ),
        ),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            icon,
            color: MainColors.blackColor,
            height: 40.h,
            width: 40.h,
          ),
          SizedBox(height: 10.h),
          Text(
            title,
            style: TextStyle(
              color: MainColors.blackColor,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5.h),
          Container(
            height: 290.h,
            child: SingleChildScrollView(
              child: Text(
                description,
                style: TextStyle(
                  color: MainColors.blackColor,
                  fontSize: 16.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:Merilao/app/core/components/buttons/primary_button_component.dart';
import 'package:Merilao/app/core/components/others/header_component.dart';
import 'package:Merilao/app/core/styles/colors.dart';

import 'package:Merilao/app/modules/sub_details/controllers/sub_details_controller.dart';

class SubDetailsView extends GetView<SubDetailsController> {
  const SubDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderComponent(
        title: "الإستشارات الصحية",
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                  child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 30.h),
                itemBuilder: (context, index) {
                  return PrimaryButtonComponent(
                      borderColor: MainColors.gryColor.withOpacity(0.6),
                      height: 75.h,
                      textColor: MainColors.blackColor,
                      onTap: () async {
                        launchAnotherApp();
                      },
                      text: controller
                          .createLists()[controller.indexOfpage.value][index]
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

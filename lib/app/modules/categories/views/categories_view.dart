import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wed/app/core/components/others/header_component.dart';
import 'package:wed/app/core/styles/colors.dart';
import 'package:wed/app/core/styles/text_styles.dart';
import 'package:wed/app/modules/categories/controllers/categories_controller.dart';

class CategoriesView extends GetView<CategoriesController> {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderComponent(
        title: controller.listOfTitle[controller.indexOfpage.value],
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
                                .createLists()[controller.indexOfpage.value]
                                    [index]
                                .toString(),
                            style: TextStyles.mediumBodyTextStyle(context),
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

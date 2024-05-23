import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:Merilao/app/core/components/others/description_component.dart';
import 'package:Merilao/app/core/components/others/header_component.dart';
import 'package:Merilao/app/core/constants/icons_assets_constants.dart';
import 'package:Merilao/app/core/styles/colors.dart';
import 'package:Merilao/app/modules/description_view/controllers/description_controller.dart';
import 'package:Merilao/app/modules/details/controllers/details_controller.dart';
import 'package:Merilao/app/modules/details/views/components/detalis_component.dart';

class DescriptionView extends GetView<DescriptionController> {
  const DescriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderComponent(
        title: "مقالات طبية",
      ),
      body: SafeArea(
        child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 800.h,
                    child: ListView.builder(
                      itemCount: controller.listTitle4.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(10.h),
                          child: Container(
                            width: double.infinity,
                            child: descriptionCardComponent(
                                title: controller.listTitle1[index],
                                description: controller.listTitle4[index],
                                icon: controller.listOfImage[index],
                                color: MainColors.whiteColor),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}

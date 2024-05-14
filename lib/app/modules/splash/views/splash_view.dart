import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:BIMARiSTAN/app/core/constants/logos_assets_constants.dart';
import 'package:BIMARiSTAN/app/core/styles/colors.dart';
import 'package:BIMARiSTAN/app/core/styles/text_styles.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.blackColor,
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Positioned(
            //     child: Center(
            //         child: Container(
            //   height: 250.w,
            //   width: 250.w,
            //   color: MainColors.whiteColor,
            // ))),
            Positioned(
                child: Center(
                    child: Container(
                        color: MainColors.whiteColor,
                        child: Image.asset(LogosAssetsConstants.appLogo,
                            color: MainColors.blackColor, width: 300.w)))),
            Positioned(
                bottom: 20.h,
                child: Container(
                    width: 428.w,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " 🤍 By HoskaDev 🤍",
                          style: TextStyles.mediumLabelTextStyle(context)
                              .copyWith(
                                  color: MainColors.whiteColor,
                                  fontSize: 18.sp),
                        ),
                      ],
                    ))),
          ],
        ),
      ),
    );
  }
}

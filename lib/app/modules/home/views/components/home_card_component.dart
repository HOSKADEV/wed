import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:CNIQUE/app/core/styles/colors.dart';
import 'package:CNIQUE/app/core/styles/text_styles.dart';
import 'package:CNIQUE/app/modules/details/controllers/details_controller.dart';

class HomeCardComponent extends GetView<DetailsController> {
  const HomeCardComponent(
      {required this.indexOfpage,
      super.key,
      required this.title,
      required this.backgroundGradient,
      required this.backgroundImage,
      required this.onTap,
      this.widthComponent,
      this.heightComponent});
  final RxInt indexOfpage;
  final String backgroundImage;
  final String title;
  // final int count;
  final Function onTap;
  final Gradient backgroundGradient;
  final double? widthComponent, heightComponent;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {controller.indexOfpage = indexOfpage, onTap()},
      child: Container(
        height: heightComponent,
        width: widthComponent ?? 200.w, //371.w,
        constraints: BoxConstraints(maxHeight: heightComponent ?? 150.h),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: MainColors.shadowColor(context)!,
              spreadRadius: 0,
              blurRadius: 20,
              offset: const Offset(0, 10), // changes position of shadow
            ),
          ],
          gradient: backgroundGradient,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(17.r),
                child: Image.asset(
                  backgroundImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned.fill(
              child: Opacity(
                opacity: 0.7,
                child: Container(
                  decoration: BoxDecoration(
                    color: MainColors.blackColor.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(17.r),
                  ),
                ),
              ),
            ),
            PositionedDirectional(
              top: 15.h,
              start: 10.w,
              child: Text(
                title,
                style: TextStyles.mediumLabelTextStyle(context).copyWith(
                  color: MainColors.whiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

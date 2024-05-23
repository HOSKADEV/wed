import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'package:Merilao/app/core/styles/colors.dart';
import 'package:Merilao/app/core/styles/text_styles.dart';
import 'package:Merilao/app/modules/details/controllers/details_controller.dart';

class HomeCardComponent extends GetView<DetailsController> {
  const HomeCardComponent(
      {required this.indexOfpage,
      super.key,
      required this.title,
      required this.backgroundGradient,
      required this.backgroundImage,
      required this.onTap,
      this.widthComponent,
      this.opacity,
      this.heightComponent});
  final RxInt indexOfpage;
  final String backgroundImage;
  final String title;
  // final int count;
  final Function onTap;
  final Gradient backgroundGradient;
  final double? widthComponent, heightComponent, opacity;
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
                    color: MainColors.blackColor.withOpacity(opacity ?? 0.5),
                    borderRadius: BorderRadius.circular(17.r),
                  ),
                ),
              ),
            ),
            // PositionedDirectional(
            //   top: 15.h,
            //   start: 10.w,
            //   child: Text(
            //     title,
            //     style: TextStyles.mediumLabelTextStyle(context).copyWith(
            //       color: MainColors.whiteColor,
            //     ),
            //   ),
            // ),
            PositionedDirectional(
              top: 15.h,
              start: 10.w,
              child: Container(
                width: 170.w, // يمكنك تحديد العرض المناسب للنص هنا
                child: Text(
                  title,
                  style: TextStyles.mediumLabelTextStyle(context).copyWith(
                    color: MainColors.whiteColor,
                  ),
                  // softWrap: true, // يتيح للنص الانكسار إلى السطر التالي
                  maxLines: 3, // يمكنك تحديد عدد الأسطر القصوى التي يمكن عرضها
                  overflow: TextOverflow
                      .ellipsis, // يضيف ثلاث نقاط (...) إذا كان النص أطول من المساحة المتاحة
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

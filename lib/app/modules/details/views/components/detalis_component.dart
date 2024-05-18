import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:SIDIA/app/core/styles/colors.dart';
import 'package:SIDIA/app/core/styles/text_styles.dart';

class DetalisCardComponent extends StatelessWidget {
  final String title;
  final String description;
  final String icon;
  final Color color;

  DetalisCardComponent(
      {required this.title,
      required this.description,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.h),
      // constraints: BoxConstraints(maxHeight: 750.h, minHeight: 400.h),
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
          SizedBox(
            height: 170.h,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(17.r),
              child: Image.asset(
                icon,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          // Text(
          //   title,
          //   style: TextStyle(
          //     color: MainColors.blackColor,
          //     fontSize: 20.sp,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          SizedBox(height: 5.h),
          Container(
            child: Text(
              description,
              style: TextStyles.largeBodyTextStyle(context).copyWith(
                  fontWeight: FontWeight.bold, color: MainColors.blackColor),
            ),
          ),
        ],
      ),
    );
  }
}

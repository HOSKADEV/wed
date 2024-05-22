// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:CNIQUE/app/core/styles/colors.dart';

class BackButtonComponent extends StatelessWidget {
  final Function? onTap;
  final bool? isCloseButton;
  const BackButtonComponent({
    Key? key,
    this.onTap,
    this.isCloseButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 45.r,
      height: 45.r,
      decoration: BoxDecoration(
          color: MainColors.backgroundColor(context),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: MainColors.disableColor(context)!,
          ),
          boxShadow: [
            BoxShadow(
              color: MainColors.blackColor.withOpacity(0.05),
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(0, 0), // changes position of shadow
            ),
          ]),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: MainColors.primaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          backgroundColor: MainColors.transparentColor,
        ),
        onPressed: () => (onTap == null) ? Get.back() : onTap!(),
        child: Center(
          child: Icon(
            isCloseButton == true
                ? Icons.close
                : Get.locale?.languageCode == 'ar'
                    ? Icons.keyboard_arrow_right_outlined
                    : Icons.keyboard_arrow_left_outlined,
            color: Theme.of(context).extension<ColorsStyles>()?.textColor,
            size: 25.sp,
          ),
        ),
      ),
    );
  }
}

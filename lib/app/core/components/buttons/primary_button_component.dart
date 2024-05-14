// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:HANINI/app/core/constants/icons_assets_constants.dart';
import 'package:HANINI/app/core/styles/colors.dart';
import 'package:HANINI/app/core/styles/text_styles.dart';

class PrimaryButtonComponent extends StatelessWidget {
  PrimaryButtonComponent(
      {Key? key,
      required this.onTap,
      required this.text,
      this.icon,
      this.backgroundColor,
      this.textColor,
      this.borderColor,
      this.gradient,
      this.borderRadius,
      this.width,
      this.height,
      this.isLoading,
      this.disableShadow})
      : super(key: key);

  @required
  final Function onTap;
  final String text;
  String? icon;
  final Color? backgroundColor;
  final Gradient? gradient;
  final Color? textColor;
  final Color? borderColor;
  final BorderRadius? borderRadius;
  final double? width;
  final double? height;
  final bool? isLoading;
  final bool? disableShadow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        gradient: backgroundColor == null
            ? gradient ?? MainColors.primaryGradientColor
            : null,
        color: backgroundColor,
        border: Border.all(
          color: borderColor ?? Colors.transparent,
          width: 1.5,
        ),
        borderRadius: borderRadius ?? BorderRadius.circular(8.r),
        boxShadow: disableShadow != false
            ? [
                BoxShadow(
                  color: (MainColors.primaryColor.withOpacity(0.2)),
                  spreadRadius: 0,
                  blurRadius: 20,
                  offset: Offset(0, 10.h), // changes position of shadow
                ),
              ]
            : null,
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: MainColors.primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
          backgroundColor: MainColors.transparentColor,
        ),
        onPressed: () => onTap(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (icon != null)
              Row(
                children: [
                  SizedBox(
                    width: 20.h,
                  ),
                  SvgPicture.asset(
                    color: MainColors.whiteColor,
                    icon!,
                    height: 60.h,
                    width: 60.h,
                  ),
                ],
              ),
            Row(
              textBaseline: TextBaseline.ideographic,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyles.buttonTextStyle(context).copyWith(
                      color: textColor ?? MainColors.whiteColor,
                      fontSize: 20.sp),
                ),
              ],
            ),
            SizedBox()
          ],
        ),
      ),
    );
  }
}

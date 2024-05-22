import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:CNIQUE/app/core/components/buttons/back_button_component.dart';
import 'package:CNIQUE/app/core/styles/colors.dart';
import 'package:CNIQUE/app/core/styles/text_styles.dart';

class HeaderComponent extends StatelessWidget implements PreferredSizeWidget {
  const HeaderComponent(
      {super.key,
      this.appBarHeight,
      this.isBack,
      this.title,
      this.actionWidget,
      this.titleWidget,
      this.backgroundColor,
      this.backButtonBackgroundColor,
      this.prefixWidget,
      this.isTotallyTransparent});

  final double? appBarHeight;
  final bool? isBack;
  final String? title;
  final Widget? prefixWidget;
  final Widget? titleWidget;
  final Widget? actionWidget;
  final Color? backgroundColor;
  final Color? backButtonBackgroundColor;
  final bool? isTotallyTransparent;

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight ?? 70.r);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        color: backgroundColor ?? MainColors.backgroundColor(context),
        //margin: EdgeInsets.only(top: 10.h),
        padding: EdgeInsets.only(
          left: 20.w,
          right: 20.w,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (isBack != false) const BackButtonComponent(),
            if (isBack == false && prefixWidget != null) prefixWidget!,
            if (isBack == false && prefixWidget == null)
              SizedBox(
                width: 34.w,
              ),
            Center(
              child: titleWidget ??
                  (title != null
                      ? Text(
                          '$title',
                          style: TextStyles.mediumLabelTextStyle(context),
                        )
                      : const SizedBox()),
            ),
            if (actionWidget != null) actionWidget!,
            if (actionWidget == null)
              SizedBox(
                width: 34.w,
              ),
          ],
        ),
      ),
    );
  }
}

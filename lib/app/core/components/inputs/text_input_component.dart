// ignore_for_file: must_be_immutable, unnecessary_null_in_if_null_operators, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dolani/app/core/styles/colors.dart';
import 'package:dolani/app/core/styles/text_styles.dart';

class TextInputComponent extends StatelessWidget {
  FocusNode? focusNode;
  FocusNode? nextNode;
  TextEditingController? controller;
  TextInputType? textInputType;
  String? label;
  String? hint;
  String? error;
  Widget? prefix;
  Widget? suffix;
  bool? obscureText;
  double? width;
  bool? isLabelOutside;
  bool? readOnly;
  Function(BuildContext)? onTap;
  bool? filled;
  bool? autoErrorMessage;
  double? borderRadius;

  int? maxLines;

  Function(String value)? onChange;

  Function(String value)? validate;

  bool? ltrDirection;

  int? maxLength;
  bool? count;
  TextInputAction? textInputAction;

  TextInputComponent({
    super.key,
    this.focusNode,
    this.controller,
    this.label,
    this.validate,
    this.hint,
    this.filled,
    this.width,
    this.onTap,
    this.isLabelOutside = false,
    this.readOnly = false,
    this.textInputType,
    this.nextNode,
    this.error,
    this.prefix,
    this.suffix,
    this.obscureText,
    this.autoErrorMessage = false,
    this.onChange,
    this.maxLines,
    this.ltrDirection,
    this.maxLength,
    this.count,
    this.borderRadius,
    this.textInputAction,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        (isLabelOutside != null && isLabelOutside == true)
            ? Container(
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.only(bottom: 5.h, start: 14.w),
                      child: Text(
                        label == null ? "" : label!,
                        style: TextStyles.mediumBodyTextStyle(context),
                      ),
                    )
                  ],
                ),
              )
            : Container(),
        Container(
          width: double.infinity,
          child: TextFormField(
            textAlign: ltrDirection == true ? TextAlign.end : TextAlign.start,
            maxLength: maxLength,
            validator: (value) => validate!(value!),
            maxLines: maxLines ?? 1,
            onTap: onTap == null ? null : () => onTap!(context),
            readOnly: readOnly ?? false,
            obscureText: obscureText ?? false,
            style: TextStyles.mediumBodyTextStyle(context),
            focusNode: focusNode,
            controller: controller,
            keyboardType: textInputType ?? TextInputType.text,
            textInputAction: textInputAction ?? TextInputAction.next,
            cursorColor: MainColors.primaryColor,
            decoration: InputDecoration(
              counterText: '',
              hintStyle: TextStyles.mediumBodyTextStyle(context).copyWith(
                color: MainColors.blackColor.withOpacity(0.7),
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.w, vertical: 23.h),
              errorStyle: TextStyles.smallBodyTextStyle(context).copyWith(
                color: MainColors.errorColor(context),
                fontSize: 13.sp,
              ),
              fillColor: MainColors.inputColor(context),
              filled: filled ?? true,
              hintText: hint ?? "",
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
                borderSide: BorderSide(
                  color: MainColors.errorColor(context)!,
                  width: 1,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
                borderSide: BorderSide(
                  color: MainColors.disableColor(context)!,
                  width: 1,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
                borderSide: BorderSide(
                  color: MainColors.disableColor(context)!,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
                borderSide: BorderSide(
                  color: MainColors.primaryColor.withOpacity(0.5),
                  width: 1,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
                borderSide: BorderSide(
                  color: MainColors.disableColor(context)!,
                  width: 1,
                ),
              ),
              prefixIcon: prefix != null
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        prefix ?? Container(),
                      ],
                    )
                  : null,
              suffixIcon: suffix != null
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        suffix ?? Container(),
                      ],
                    )
                  : null,
            ),
            onFieldSubmitted: (_) {
              nextNode == null
                  ? FocusScope.of(context).unfocus()
                  : FocusScope.of(context).requestFocus(nextNode);
            },
            onChanged: onChange ?? null,
          ),
        ),
      ],
    );
  }
}

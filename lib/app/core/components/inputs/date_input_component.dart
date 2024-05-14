// ignore_for_file: must_be_immutable, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:BIMARiSTAN/app/core/styles/colors.dart';
import 'package:BIMARiSTAN/app/core/styles/text_styles.dart';
import 'package:BIMARiSTAN/app/core/styles/theme_styles.dart';

class DateInputComponent extends StatelessWidget {
  Widget? child;
  FocusNode? focusNode;
  FocusNode? nextNode;
  TextEditingController? textController;
  String? error;
  Function(DateTime)? callBack;
  DateTime? selectedDate;
  DateTime? firstDate;
  DateTime? lastDate;
  bool? filled;
  double? borderRadius;
  Widget? prefix;
  Widget? suffix;
  bool? isLabelOutside;
  String? label;
  Function(String value)? validate;
  String? hint;
  DateInputComponent(
      {this.child,
      this.focusNode,
      this.nextNode,
      this.textController,
      this.error,
      this.callBack,
      this.selectedDate,
      this.hint,
      this.lastDate,
      this.firstDate,
      this.filled,
      this.borderRadius,
      this.prefix,
      this.suffix,
      this.isLabelOutside,
      this.label,
      this.validate,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child ??
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              (isLabelOutside != null && isLabelOutside == true)
                  ? Container(
                      width: double.infinity,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                bottom: 5.h, start: 14.w),
                            child: Text(
                              label == null ? "" : label!,
                              style: TextStyles.mediumBodyTextStyle(context),
                            ),
                          )
                        ],
                      ),
                    )
                  : Container(),
              TextFormField(
                readOnly: true,
                onTap: () => _selectDate(context),
                style: TextStyles.mediumBodyTextStyle(context),
                focusNode: focusNode,
                controller: textController,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                cursorColor: Colors.grey,
                validator: (value) => validate!(value!),
                decoration: InputDecoration(
                  counterText: '',
                  hintStyle: TextStyles.mediumBodyTextStyle(context).copyWith(
                    color: MainColors.disableColor(context),
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
              ),
            ],
          ),
        );
  }

  _selectDate(BuildContext context) async {
    FocusScope.of(context).unfocus();
    DateTime? newSelectedDate = await showDatePicker(
      helpText: "",
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: firstDate ?? DateTime(1950),
      lastDate: lastDate ?? DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeStyles.lightTheme.copyWith(),
          child: child ??
              Container(
                height: 100,
                width: 100,
                color: MainColors.primaryColor,
              ),
        );
      },
    );

    if (newSelectedDate != null) {
      selectedDate = newSelectedDate;
      if (callBack != null) {
        callBack!(selectedDate!);
      }
      if (textController != null) {
        textController?.text = DateFormat.yMd().format(selectedDate!);
      }
    }
  }
}

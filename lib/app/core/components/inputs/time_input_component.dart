// ignore_for_file: sized_box_for_whitespace, use_build_context_synchronously, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travelPal/app/core/styles/colors.dart';
import 'package:travelPal/app/core/styles/text_styles.dart';

class TimeInputComponent extends StatelessWidget {
  Widget? child;
  FocusNode? focusNode;
  FocusNode? nextNode;
  TextEditingController? textController;
  String? error;
  Function(TimeOfDay?)? callBack;
  TimeOfDay? selectedTime;
  String? hint;
  Widget? suffix;
  bool? filled;
  double? borderRadius;
  Widget? prefix;
  bool isLabelOutside;
  String label;
  double? width;
  Function(String value)? validate;
  TimeInputComponent(
      {this.child,
      this.focusNode,
      this.nextNode,
      this.textController,
      this.error,
      this.callBack,
      this.selectedTime,
      this.hint,
      this.suffix,
      this.validate,
      required this.label,
      this.isLabelOutside = false,
      this.prefix,
      this.borderRadius,
      this.filled,
      this.width,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return child ??
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                isLabelOutside
                    ? Container(
                        width: double.infinity,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: 5.h, start: 14.w),
                              child: Text(
                                label,
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
                  validator: (value) => validate!(value!),
                ),
              ],
            ),
          ),
        );
  }

  _selectDate(BuildContext context) async {
    FocusScope.of(context).unfocus();
    TimeOfDay? newSelectedTime = await showTimePicker(
      helpText: "",
      context: context,
      initialTime: TimeOfDay.now(),
      // builder: (BuildContext context, Widget child) {
      //   return Theme(
      //     data: ThemeData.dark().copyWith(
      //       colorScheme: ColorScheme.dark(
      //         primary: AppColors.primaryColor,
      //         onPrimary: AppColors.white,
      //         surface: AppColors.primaryColor,
      //         onSurface: Colors.black,
      //       ),
      //       dialogBackgroundColor: Colors.white,
      //     ),
      //     child: child ??
      //         Container(
      //           height: 100,
      //           width: 100,
      //           color: AppColors.blue,
      //         ),
      //   );
      // },
    );

    if (newSelectedTime != null) {
      selectedTime = newSelectedTime;
      if (callBack != null) {
        callBack!(selectedTime);
      }
      if (textController != null) {
        textController?.text = selectedTime!.format(context).toString();
      }
    }
  }
}

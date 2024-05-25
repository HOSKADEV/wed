import 'package:dolani/app/core/constants/icons_assets_constants.dart';
import 'package:dolani/app/core/styles/colors.dart';
import 'package:dolani/app/core/styles/text_styles.dart';
import 'package:dolani/app/models/dropdown_item_model.dart';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:tekcard/app/core/constants/icons_assets_constants.dart';
// import 'package:tekcard/app/core/styles/colors.dart';
// import 'package:tekcard/app/core/styles/text_styles.dart';
// import 'package:tekcard/app/models/dropdown_item_model.dart';

class DropdownComponent extends StatelessWidget {
  const DropdownComponent(
      {super.key,
      required this.dataList,
      this.selectedItem,
      this.label,
      this.isLabelOutside,
      this.hint,
      this.focusNode,
      this.nextNode,
      this.width,
      required this.onSelectedItem});

  final List<DropdownItemModel> dataList;
  final DropdownItemModel? selectedItem;
  final String? label;
  final double? width;
  final bool? isLabelOutside;
  final String? hint;
  final FocusNode? focusNode;
  final FocusNode? nextNode;
  final Function(DropdownItemModel? value) onSelectedItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        (isLabelOutside == true)
            ? SizedBox(
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.only(bottom: 5.h, start: 14.w),
                      child: Text(
                        label == null ? "" : label!,
                        style: TextStyles.largeBodyTextStyle(context)
                            .copyWith(color: MainColors.primaryColor),
                      ),
                    )
                  ],
                ),
              )
            : Container(),
        Container(
          width: width ?? 360.w,
          decoration: BoxDecoration(),
          child: DropdownButtonHideUnderline(
            child: DropdownButton2<DropdownItemModel>(
              isExpanded: true,
              hint: Text(
                hint ?? '',
                style: TextStyles.mediumBodyTextStyle(context).copyWith(
                  color: MainColors.disableColor(context),
                ),
              ),
              items: dataList
                  .map(
                    (DropdownItemModel item) =>
                        DropdownMenuItem<DropdownItemModel>(
                      value: item,
                      child: Text(
                        item.title ?? '',
                        style: TextStyles.mediumBodyTextStyle(context),
                      ),
                    ),
                  )
                  .toList(),
              value: selectedItem,
              focusNode: focusNode,
              onChanged: (DropdownItemModel? value) => onSelectedItem(value),
              buttonStyleData: ButtonStyleData(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                elevation: 0,
                decoration: BoxDecoration(
                  color: MainColors.inputColor(context),
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: MainColors.disableColor(context)!.withOpacity(0.3),
                  ),
                ),
              ),
              iconStyleData: IconStyleData(
                icon: SvgPicture.asset(
                  IconsAssetsConstants.drrowDownIcon,
                  width: 25.r,
                  color: MainColors.disableColor(context),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

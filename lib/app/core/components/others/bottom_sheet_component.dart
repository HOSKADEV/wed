import 'package:flutter/material.dart';

import '../../styles/colors.dart';

class BottomSheetComponent {
  void show(
    BuildContext context, {
    required Widget body,
    double? height,
    bool? dismissible,
    double? horizontalMargin,
    Color? backgroundColor,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: dismissible ?? true,
      enableDrag: false,
      backgroundColor: MainColors.transparentColor,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: body,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

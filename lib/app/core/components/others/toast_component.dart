// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/src/extension_navigation.dart';
// import 'package:get/get_navigation/src/snackbar/snackbar.dart';
// import 'package:BIMARiSTAN/app/core/constants/icons_assets_constants.dart';
// import 'package:BIMARiSTAN/app/core/styles/colors.dart';
// import 'package:BIMARiSTAN/app/core/styles/text_styles.dart';

// class ToastComponent {
//   void showToast(BuildContext context, {required String message, required ToastTypes type}) {
//     Get.snackbar(
//       '',
//       '',
//       snackPosition: SnackPosition.BOTTOM,
//       borderRadius: 15,
//       margin: const EdgeInsets.only(
//         left: 20,
//         right: 10,
//         bottom: 35,
//       ),
//       duration: const Duration(milliseconds: 2000),
//       dismissDirection: DismissDirection.horizontal,
//       backgroundColor: type == ToastTypes.error
//           ? MainColors.errorColor(context)
//           : type == ToastTypes.success
//               ? MainColors.successColor(context)
//               : type == ToastTypes.info
//                   ? MainColors.infoColor(context)
//                   : MainColors.warningColor(context),
//       isDismissible: true,
//       titleText: const Text(
//         '',
//         style: TextStyle(color: Colors.white, fontSize: 0),
//       ),
//       boxShadows: [
//         BoxShadow(
//           color: MainColors.shadowColor(context)!,
//           spreadRadius: 0,
//           blurRadius: 20,
//           offset: const Offset(0, 0),
//         ),
//       ],
//       padding: EdgeInsets.only(
//         bottom: 20.h,
//         top: 10.h,
//         left: 25.w,
//         right: 25.w,
//       ),
//       messageText: Row(
//         children: [
//           SvgPicture.asset(
//             type == ToastTypes.success
//                 ? IconsAssetsConstants.successIcon
//                 : type == ToastTypes.error
//                     ? IconsAssetsConstants.errorIcon
//                     : type == ToastTypes.info
//                         ? IconsAssetsConstants.infoIcon
//                         : IconsAssetsConstants.warningIcon,
//             color: Colors.white,
//             width: 26,
//             height: 26,
//           ),
//           const SizedBox(
//             width: 10,
//           ),
//           SizedBox(
//             width: Get.width - 115,
//             child: Text(
//               message,
//               style: TextStyles.mediumBodyTextStyle(context).copyWith(
//                 color: MainColors.whiteColor,
//               ),
//               maxLines: 3,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// enum ToastTypes {
//   success,
//   error,
//   info,
//   warning,
// }

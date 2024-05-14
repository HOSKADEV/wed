import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:HANINI/app/core/styles/theme_styles.dart';
import 'package:HANINI/app/core/utils/translations/translation.dart';
import 'package:HANINI/app/core/utils/translations/translations_assets_reader.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await TranslationsAssetsReader.initialize();
  runApp(
    ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return GetMaterialApp(
          transitionDuration: const Duration(milliseconds: 300),
          defaultTransition: Transition.circularReveal,
          debugShowCheckedModeBanner: false,
          title: "HANINI",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          translations: Translation(),
          locale: const Locale('ar'),
          fallbackLocale: const Locale('ar'),
          themeMode: ThemeMode.light,
          theme: ThemeStyles.lightTheme,
          darkTheme: ThemeStyles.darkTheme,
        );
      },
    ),
  );
}

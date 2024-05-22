// ignore_for_file: constant_identifier_names

import 'package:travelPal/app/modules/details/views/details_view.dart';
import 'package:travelPal/app/modules/search/bindings/description_binding.dart';
import 'package:travelPal/app/modules/search/views/search.dart';
import 'package:get/get.dart';
import 'package:travelPal/app/modules/description_view/bindings/description_binding.dart';
import 'package:travelPal/app/modules/description_view/views/description_view.dart';
import 'package:travelPal/app/modules/details/bindings/details_binding.dart';
// import 'package:travelPal/app/modules/details/views/details_view.dart';
import 'package:travelPal/app/modules/sub_details/bindings/sub_details_binding.dart';
import 'package:travelPal/app/modules/sub_details/views/sub_details_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAILS,
      page: () => const DetailsView(),
      binding: DetailsBinding(),
    ),
    GetPage(
      name: _Paths.SUBDETAILS,
      page: () => const SubDetailsView(),
      binding: SubDetailsBinding(),
    ),
    GetPage(
      name: _Paths.Description,
      page: () => const DescriptionView(),
      binding: DescriptionBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH,
      page: () => const SearchView(),
      binding: SearchBinding(),
    ),
  ];
}

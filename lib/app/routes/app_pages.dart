// ignore_for_file: constant_identifier_names

import 'package:dolani/app/modules/search_job/bindings/search_job_binding.dart';
import 'package:dolani/app/modules/search_job/views/search_job_view.dart';
import 'package:dolani/app/modules/search_workers/bindings/search_workers_binding.dart';
import 'package:dolani/app/modules/search_workers/views/search_workers_view.dart';
import 'package:get/get.dart';

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
      name: _Paths.SEARCHJOB,
      page: () => const SearchJobView(),
      binding: SearchJobBinding(),
    ),
    GetPage(
      name: _Paths.SEARCHWORKERS,
      page: () => const SearchWorkersView(),
      binding: SearchWorkersBinding(),
    ),
  ];
}

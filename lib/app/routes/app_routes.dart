// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const SPLASH = _Paths.SPLASH;

  static const HOME = _Paths.HOME;

  static const CENTERS = _Paths.CENTERS;

  static const CENTER_DETAILS = _Paths.CENTER_DETAILS;
}

abstract class _Paths {
  _Paths._();

  static const SPLASH = '/splash';

  static const HOME = '/home';

  static const CENTERS = '/centers';

  static const CENTER_DETAILS = '/center-details';
}

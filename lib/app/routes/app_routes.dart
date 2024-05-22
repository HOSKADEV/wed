// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const SPLASH = _Paths.SPLASH;

  static const HOME = _Paths.HOME;

  static const DETAILS = _Paths.DETAILS;
  static const SUBDETAILS = _Paths.SUBDETAILS;
  static const Description = _Paths.Description;

  static const SEARCH = _Paths.SEARCH;
}

abstract class _Paths {
  _Paths._();

  static const SPLASH = '/splash';

  static const HOME = '/home';

  static const DETAILS = '/details';
  static const SUBDETAILS = '/sub_details';
  static const Description = '/Description';
  static const SEARCH = '/search';
}

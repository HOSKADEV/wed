import 'dart:io';

import 'package:string_validator/string_validator.dart';
import 'package:SIDIA/app/core/constants/strings_assets_constants.dart';

class ValidatorUtil {
  static String? validNullable(var x, {String? customMessage}) {
    if (x == null) {
      return customMessage ??
          StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }

  static String? validImages(File x, int maxSize, {String? customMessage}) {
    if (validNullable(x) == null) {
      final bytes = x.readAsBytesSync().lengthInBytes;
      final kb = bytes / 1024;
      final mb = kb / 1024;
      return mb < maxSize
          ? null
          : customMessage ??
              StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }

  static String? validEmail(String email, {String? customMessage}) {
    if (!isEmail(email)) {
      return customMessage ??
          StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }

  static String? validName(String name, {String? customMessage}) {
    if (isNumeric(name) || !isLength(name, 2)) {
      return customMessage ??
          StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }

  static String? validEmpty(String name, {String? customMessage}) {
    if (!isLength(name, 1)) {
      return customMessage ??
          StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }

  static String? validUserName(String userName, {String? customMessage}) {
    if (!isAlpha(userName) || !isLength(userName, 5)) {
      return customMessage ??
          StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }

  static String? validNumber(String number, {String? customMessage}) {
    if (!isNumeric(number)) {
      return customMessage ??
          StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }

  static String? validComment(String comment, {String? customMessage}) {
    if (!isLength(comment, 15)) {
      return customMessage ??
          StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }

  static String? validPhone(String phone, {String? customMessage}) {
    if (RegExp(r"^[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$").hasMatch(phone) !=
            true ||
        phone.length != 9 ||
        !(phone[0] == '6' || phone[0] == '5' || phone[0] == '7')) {
      return customMessage ??
          StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }

  static String? validPassword(String password, {String? customMessage}) {
    if (!isLength(password, 8)) {
      return customMessage ??
          StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }

  static String? validOtp(String password, {String? customMessage}) {
    if (!isLength(password, 6)) {
      return customMessage ??
          StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }

  static String? validConfPass(String confPassword, String password,
      {String? customMessage}) {
    if (!equals(password, confPassword)) {
      return customMessage ??
          StringsAssetsConstants.validatorDefaultErrorMessage;
    }
    return null;
  }

  static String? validAge(String age, int minAge, {String? customMessage}) {
    if (validNumber(age) == null) {
      if (int.parse(age) < minAge) {
        return customMessage ??
            StringsAssetsConstants.validatorDefaultErrorMessage;
      }
    }
    return null;
  }

  static String? validCompare(String number1, String number2, CompareType type,
      {String? customMessage}) {
    if (validNumber(number1) == null && validNumber(number2) == null) {
      if (type == CompareType.greater &&
          !(int.parse(number1) > int.parse(number2))) {
        return customMessage ??
            StringsAssetsConstants.validatorDefaultErrorMessage;
      }
      if (type == CompareType.less &&
          !(int.parse(number1) < int.parse(number2))) {
        return customMessage ??
            StringsAssetsConstants.validatorDefaultErrorMessage;
      }
      if (type == CompareType.greaterEqual &&
          !(int.parse(number1) >= int.parse(number2))) {
        return customMessage ??
            StringsAssetsConstants.validatorDefaultErrorMessage;
      }
      if (type == CompareType.lessEqual &&
          !(int.parse(number1) <= int.parse(number2))) {
        return customMessage ??
            StringsAssetsConstants.validatorDefaultErrorMessage;
      }
      if (type == CompareType.equal &&
          !(int.parse(number1) == int.parse(number2))) {
        return customMessage ??
            StringsAssetsConstants.validatorDefaultErrorMessage;
      }
    } else {
      return validNumber(number1) ?? validNumber(number2);
    }
    return null;
  }

  static String getErrorString(Map<String, dynamic> errors, String fieldName) {
    if (errors.containsKey(fieldName)) return errors[fieldName][0].toString();
    return "";
  }
}

enum CompareType {
  greater,
  less,
  greaterEqual,
  lessEqual,
  equal,
}

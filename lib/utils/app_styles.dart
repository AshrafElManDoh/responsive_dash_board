import 'package:flutter/material.dart';
import 'package:responsive_dash_board/constants.dart';

abstract class AppStyles {
  static const TextStyle styleRegular16 = TextStyle(
    color: kprimaryColor,
    fontWeight: FontWeight.w400,
    fontSize: 16,
  );
  static const TextStyle styleMedium16 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: kprimaryColor,
  );
  static const TextStyle styleMedium20 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 20,
    color: kprimaryColor,
  );
  static const TextStyle styleBold16 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: ksecondaryColor,
  );
  static const TextStyle styleSemiBold16 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: kprimaryColor,
  );
  static const TextStyle styleSemiBold20 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20,
    color: kprimaryColor,
  );
  static const TextStyle styleSemiBold18 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: ksecondaryColor,
  );
  static const TextStyle styleSemiBold24 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 24,
    color: ksecondaryColor,
  );
  static const TextStyle styleRegular12 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: Color(0xffAAAAAA),
  );
  static const TextStyle styleRegular14 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Color(0xffAAAAAA),
  );

}

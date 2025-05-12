import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16 = TextStyle(
    color: kprimaryColor,
    fontWeight: FontWeight.w400,
    fontSize: getResponsiveText(fontBaseSize: 16),
  );
  static TextStyle styleMedium16 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: getResponsiveText(fontBaseSize: 16),
    color: kprimaryColor,
  );
  static TextStyle styleMedium20 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: getResponsiveText(fontBaseSize: 20),
    color: kprimaryColor,
  );
  static TextStyle styleBold16 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: getResponsiveText(fontBaseSize: 16),
    color: ksecondaryColor,
  );
  static TextStyle styleSemiBold16 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: getResponsiveText(fontBaseSize: 16),
    color: kprimaryColor,
  );
  static TextStyle styleSemiBold20 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: getResponsiveText(fontBaseSize: 20),
    color: kprimaryColor,
  );
  static TextStyle styleSemiBold18 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: getResponsiveText(fontBaseSize: 18),
    color: ksecondaryColor,
  );
  static TextStyle styleSemiBold24 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: getResponsiveText(fontBaseSize: 24),
    color: ksecondaryColor,
  );
  static TextStyle styleRegular12 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: getResponsiveText(fontBaseSize: 12),
    color: const Color(0xffAAAAAA),
  );
  static TextStyle styleRegular14 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: getResponsiveText(fontBaseSize: 14),
    color: const Color(0xffAAAAAA),
  );
}

double getResponsiveText({required fontBaseSize}) {
  double scaleFactor = getScaleFactor();
  double responsiveTextsize = scaleFactor * fontBaseSize;
  double lowerLimit = responsiveTextsize * .8;
  double upperLimit = responsiveTextsize * 1.2;
  return responsiveTextsize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor() {
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  double width = physicalWidth / devicePixelRatio;

  if (width < SizeConfig.tablet) {
    return width / 600;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1500;
  }
}

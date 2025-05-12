
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/constants.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle stycleRegular16(context) {
    return TextStyle(
      color: kprimaryColor,
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveText(context, fontBaseSize: 16),
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: getResponsiveText(context, fontBaseSize: 16),
      color: kprimaryColor,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: getResponsiveText(context, fontBaseSize: 20),
      color: kprimaryColor,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: getResponsiveText(context, fontBaseSize: 16),
      color: ksecondaryColor,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveText(context, fontBaseSize: 16),
      color: kprimaryColor,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveText(context, fontBaseSize: 20),
      color: kprimaryColor,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveText(context, fontBaseSize: 18),
      color: ksecondaryColor,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: getResponsiveText(context, fontBaseSize: 24),
      color: ksecondaryColor,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveText(context, fontBaseSize: 12),
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveText(context, fontBaseSize: 14),
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: getResponsiveText(context, fontBaseSize: 16),
      color: kprimaryColor,
    );
  }
}

double getResponsiveText(context, {required fontBaseSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveTextsize = scaleFactor * fontBaseSize;
  double lowerLimit = responsiveTextsize * .8;
  double upperLimit = responsiveTextsize * 1.2;
  return responsiveTextsize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.tablet) {
    return width / 600;
  } else if (width < SizeConfig.desktop) {
    return width / 1050;
  } else {
    return width / 1500;
  }
}

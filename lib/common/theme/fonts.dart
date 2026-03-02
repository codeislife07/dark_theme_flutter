import 'package:flutter/material.dart';
import 'colors.dart';

const fontFamily = 'okra'; // Replace with your custom/local font family
const fontHeader = 'okra'; // Replace with your custom/local font family

TextTheme buildTextTheme(
  TextTheme base,
  String? language, {
  String? fontFamilys = fontFamily,
  String? fontHeaders = fontHeader,
}) {
  return base
      .copyWith(
        displayLarge: base.displayLarge!.copyWith(
          fontFamily: fontHeaders,
          fontWeight: FontWeight.w700,
        ),
        displayMedium: base.displayMedium!.copyWith(
          fontFamily: fontHeaders,
          fontWeight: FontWeight.w700,
        ),
        displaySmall: base.displaySmall!.copyWith(
          fontFamily: fontHeaders,
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: base.headlineMedium!.copyWith(
          fontFamily: fontHeaders,
          fontWeight: FontWeight.w700,
        ),
        headlineSmall: base.headlineSmall!.copyWith(
          fontFamily: fontHeaders,
          fontWeight: FontWeight.w500,
        ),
        titleLarge: base.titleLarge!.copyWith(
          fontFamily: fontHeaders,
          fontWeight: FontWeight.normal,
        ),
        bodySmall: base.bodySmall!.copyWith(
          fontFamily: fontFamilys,
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        titleMedium: base.titleMedium!.copyWith(
          fontFamily: fontFamilys,
        ),
        titleSmall: base.titleSmall!.copyWith(
          fontFamily: fontFamilys,
        ),
        bodyLarge: base.bodyLarge!.copyWith(
          fontFamily: fontFamilys,
        ),
        bodyMedium: base.bodyMedium!.copyWith(
          fontFamily: fontFamilys,
        ),
        labelLarge: base.labelLarge!.copyWith(
          fontFamily: fontFamilys,
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
      )
      .apply(
        displayColor: kGrey900,
        bodyColor: kGrey900,
      );
}

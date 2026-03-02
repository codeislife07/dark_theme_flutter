import 'package:e_learner_app_flutter/common/theme/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';
// import 'fade_through_transition.dart';
// import 'fonts.dart';

IconThemeData customIconTheme(IconThemeData original) {
  return original.copyWith(color: kGrey900);
}

ThemeData buildLightTheme(
  String? language, [
  String fontFamily = 'okra',
  String fontHeader = 'okra',
  Color primaryColor = AppColorsBoostrap.primary,
]) {
  final ColorScheme colorScheme = ColorScheme.light(
    primary: primaryColor,
    secondary: primaryColor,
    surface: Colors.white,
    background: kLightBG,
    error: kErrorRed,
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onSurface: Colors.black,
    onBackground: Colors.black,
    onError: Colors.white,
  );

  final ThemeData base = ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: kLightBG,
    fontFamily: fontFamily,
    snackBarTheme: SnackBarThemeData(
      backgroundColor: primaryColor,
      contentTextStyle: const TextStyle(color: Colors.white),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        minimumSize: const Size(120, 40),
        padding: const EdgeInsets.symmetric(vertical: 15),
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(120, 40),
        padding: const EdgeInsets.symmetric(vertical: 15),
        foregroundColor: colorScheme.primary,
        side: BorderSide(color: colorScheme.primary),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
    ),
    iconTheme: IconThemeData(color: colorScheme.primary),
    primaryIconTheme: IconThemeData(color: colorScheme.primary),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      labelStyle: TextStyle(color: AppColorsBoostrap.black),
      focusColor: colorScheme.primary,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: colorScheme.primary, width: 1),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: AppColorsBoostrap.secondary.withOpacity(0.1),
          width: 1,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: AppColorsBoostrap.secondary.withOpacity(0.1),
          width: 1,
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: AppColorsBoostrap.white,
      scrolledUnderElevation: 0,
      iconTheme: IconThemeData(color: kDarkBG),
      titleTextStyle: const TextStyle(
        color: kDarkBG,
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: colorScheme.primary,
      unselectedLabelColor: kLightBG,
      indicator: BoxDecoration(
        color: colorScheme.primary.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      dividerColor: Colors.transparent,
      labelStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
      unselectedLabelStyle: const TextStyle(fontSize: 13),
    ),
    textTheme: buildTextTheme(
      Typography.blackMountainView,
      language,
      fontFamilys: fontFamily,
      fontHeaders: fontHeader,
    ),
    primaryTextTheme: buildTextTheme(
      Typography.blackMountainView,
      language,
      fontFamilys: fontFamily,
      fontHeaders: fontHeader,
    ),
    dialogTheme: DialogThemeData(backgroundColor: kLightBG),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      },
    ),
  );

  return base;
}

import 'package:e_learner_app_flutter/common/theme/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Assuming these are the same imports as in your provided code
import 'colors.dart'; // Contains AppColorsBoostrap, kColorScheme, kDarkColorScheme, etc.

IconThemeData customIconTheme(IconThemeData original) {
  // Adjust icon color for dark theme to ensure visibility
  return original.copyWith(color: kTextPrimary); // Using white for contrast
}

ThemeData buildDarkTheme(
  String? language, [
  String fontFamily = 'Roboto',
  String fontHeader = 'Raleway',
  Color primaryColor = AppColorsBoostrap.primary,
]) {
  final ColorScheme colorScheme = ColorScheme.dark(
    primary: primaryColor,
    secondary: primaryColor,
    surface: kBlackSurface,
    background: kBlackPrimary,
    error: kErrorRed,
    onPrimary: kTextPrimary,
    onSecondary: kTextPrimary,
    onSurface: kTextPrimary,
    onBackground: kTextPrimary,
    onError: kTextPrimary,
  );

  final ThemeData base = ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: kBlackPrimary,
    fontFamily: fontFamily,
    dialogBackgroundColor: kBlackSurface,
    snackBarTheme: SnackBarThemeData(
      backgroundColor: kBlackSurface,
      behavior: SnackBarBehavior.floating,
      contentTextStyle: const TextStyle(color: kTextPrimary),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: kBlackSurface),
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
        foregroundColor: colorScheme.onPrimary,
        minimumSize: const Size(120, 40),
        padding: const EdgeInsets.symmetric(vertical: 15),
        side: BorderSide(color: colorScheme.primary),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: colorScheme.onPrimary,
      unselectedLabelColor: kTextSecondary,
      indicator: BoxDecoration(
        color: colorScheme.primary.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      dividerColor: kDividerDark,
      labelStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
      unselectedLabelStyle: const TextStyle(fontSize: 13),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: kBlackSecondary,
      foregroundColor: colorScheme.onPrimary,
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      titleTextStyle: const TextStyle(
        color: kTextPrimary,
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
      scrolledUnderElevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: kBlackLight,
      labelStyle: const TextStyle(color: kTextPrimary),
      hintStyle: const TextStyle(color: kTextMuted),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: primaryColor.withOpacity(0.6), width: 2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: kBorderDark,
          width: 1.2,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: kBorderDark,
          width: 1.2,
        ),
      ),
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      inputDecorationTheme: const InputDecorationTheme(
        labelStyle: TextStyle(color: kTextPrimary),
        hintStyle: TextStyle(color: kTextMuted),
      ),
    ),
    iconTheme: IconThemeData(color: colorScheme.onPrimary),
    primaryIconTheme: IconThemeData(color: colorScheme.onPrimary),
    hintColor: kTextMuted,
    dividerTheme: const DividerThemeData(
      color: kDividerDark,
      thickness: 0.8,
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
      },
    ),
  );

  return base.copyWith(
    brightness: Brightness.dark,
    cardColor: kBlackSecondary,
    textTheme: buildTextTheme(
      base.textTheme,
      language,
      fontFamilys: fontFamily,
      fontHeaders: fontHeader,
    ).apply(
      displayColor: colorScheme.onBackground,
      bodyColor: colorScheme.onBackground,
    ),
    primaryTextTheme: buildTextTheme(
      base.primaryTextTheme,
      language,
      fontFamilys: fontFamily,
      fontHeaders: fontHeader,
    ).apply(
      displayColor: colorScheme.onBackground,
      bodyColor: colorScheme.onBackground,
    ),
    buttonTheme: ButtonThemeData(
      colorScheme: colorScheme,
      buttonColor: colorScheme.primary,
    ),
  );
}

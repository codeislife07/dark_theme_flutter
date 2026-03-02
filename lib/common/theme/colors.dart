import 'package:flutter/material.dart';

const kEmptyColor = 0x0D000000;

class AppColorsBoostrap {
  // Bootstrap Standard Colors
  static const Color primary = Color(0xFFA7180D); // Blue
  static const Color primary1 = Colors.purpleAccent; // Dark gray text
  static const Color primaryDark = Color(0xFF3976b6); // Dark gray text
  static const Color secondary = Color(0xFF000080); // Gray
  static const Color success = Color(0xFF198754); // Green
  static const Color danger = Color(0xFFDC3545); // Red
  static const Color warning = Color(0xFFFFC107); // Yellow
  static const Color info = Color(0xFF0DCAF0); // Light Blue
  static const Color light = Color(0xFFF8F9FA); // Very Light Gray
  static const Color dark = Color(0xFF212529); // Almost Black

  // White & Black
  static const Color white = Colors.white;
  static const Color black = Colors.black;

  // Alert Background Colors (Box Colors)
  static const Color successLight = Color(0xFFD1E7DD); // Light green background
  static const Color successDark = Color(0xFF146C43); // Dark green text
  static const Color dangerLight = Color(0xFFF8D7DA); // Light red background
  static const Color dangerDark = Color(0xFF842029); // Dark red text
  static const Color warningLight = Color(
    0xFFFFF3CD,
  ); // Light yellow background
  static const Color warningDark = Color(0xFF664D03); // Dark yellow text
  static const Color infoLight = Color(0xFFCCE5FF); // Light blue background
  static const Color infoDark = Color(0xFF055160); // Dark blue text
  static const Color lightGray = Color(0xFFE9ECEF); // Light gray background
  static const Color darkGray = Color(0xFF343A40);
  static Color grey = Colors.grey[400]!;
}

/// Color env config
Color? get darkBackgroundColor => kBlackPrimary;

Color? get darkPrimaryColorLight => kBlackSecondary;

Color? get darkTextColor => kTextPrimary;

Color? get darkSecondaryColor => kAccentBlue;

Color? get lightBackgroundColor => Colors.white;

Color? get lightPrimaryColorLight => Colors.red;

Color? get lightTextColor => Colors.black;

Color? get lightSecondaryColor => Colors.red;

/// Color theme
const ColorScheme kColorScheme = ColorScheme(
  primary: AppColorsBoostrap.primary,
  secondary: AppColorsBoostrap.secondary,
  surface: kSurfaceWhite,
  error: kErrorRed,
  onPrimary: kDarkBG,
  onSecondary: kGrey900,
  onSurface: kGrey900,
  onError: kSurfaceWhite,
  brightness: Brightness.light,
);

const ColorScheme kDarkColorScheme = ColorScheme(
  primary: AppColorsBoostrap.primary,
  secondary: kAccentBlue,
  surface: kBlackSurface,
  background: kBlackPrimary,
  error: kErrorRed,
  onPrimary: kTextPrimary,
  onSecondary: kTextPrimary,
  onSurface: kTextPrimary,
  onBackground: kTextPrimary,
  onError: kTextPrimary,
  brightness: Brightness.dark,
);

/// basic colors
const kTeal50 = Color(0xFFE0F2F1);
// const kTeal100 = Color(0xFF635bff);
const kTeal1001 = Color(0xFF0a2540);

const kTeal400 = Color(0xFF26A69A);
const kGrey900 = Color(0xFF263238);
const kGrey600 = Color(0xFF546E7A);
const kGrey200 = Color(0xFFEEEEEE);
const kGrey400 = Color(0xFF90a4ae);
const kErrorRed = Color(0xFFe74c3c);
const kColorRed = Color(0xFFF3090B);
const kSurfaceWhite = Color(0xFFFFFBFA);
const kRedColorHeart = Color(0xFFf22742);

/// color for theme
const kLightPrimary = Color(0xfffcfcff);
const kLightAccent = Color(0xFF546E7A);
const kDarkAccent = Color(0xffF4F5F5);

const kLightBG = Color(0xFFF6F8FC);
// const kLightBG = Color(0xfff6f9fc);
const kDarkBG = kBlackPrimary;
const kDarkBgLight = kBlackSecondary;

// Primary Backgrounds
const kBlackPrimary = Color(0xFF0D0D0D); // Main background
const kBlackSecondary = Color(0xFF1e1e1e); // Cards / containers
const kBlackSurface = Color(0xFF1C1C1C); // Elevated surfaces

// Soft Variants
const kBlackLight = Color(0xFF242424); // Inputs / hover
const kBlackLighter = Color(0xFF2E2E2E); // Borders

// Accent
const kAccentBlue = Color(0xFF3B82F6); // Modern blue
const kAccentPurple = Color(0xFF8B5CF6); // Premium purple
const kAccentGreen = Color(0xFF22C55E); // Success green

// Text Colors
const kTextPrimary = Color(0xFFFFFFFF); // Main text
const kTextSecondary = Color(0xFFB3B3B3); // Secondary text
const kTextMuted = Color(0xFF808080); // Disabled text

// Borders & Divider
const kBorderDark = Color(0xFF2A2A2A);
const kDividerDark = Color(0xFF1F1F1F);

/// Color for Product Detail
const kColorRatingStar = Color(0xfff39c12);

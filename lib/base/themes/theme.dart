import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_flutter_app/base/colors.dart';
import 'package:test_flutter_app/base/extension/context_extension.dart';
import 'package:test_flutter_app/base/margin.dart';

ThemeData lightTheme(BuildContext context) {
  final color = context.lightColor;
  final textTheme = GoogleFonts.manjariTextTheme().apply(
    fontFamily: 'Manjari',
  );
  return ThemeData(
    useMaterial3: true,
    textTheme: textTheme.copyWith(
      bodySmall: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w400),
      bodyMedium: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400),
      bodyLarge: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400),
      labelSmall: textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w400),
      labelMedium: textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w500),
      labelLarge: textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w500),
      titleLarge: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
      titleMedium: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500),
      titleSmall: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500),
      headlineSmall: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
      headlineMedium: textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w700),
      headlineLarge: textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w700),
      displaySmall: textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w400),
      displayMedium: textTheme.displayMedium?.copyWith(fontWeight: FontWeight.w400),
      displayLarge: textTheme.displayLarge?.copyWith(fontWeight: FontWeight.w400),
    ),
    radioTheme: RadioThemeData(
      fillColor: WidgetStateProperty.all(color.surface),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.grey.shade100.withOpacity(.1),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(dMargin1),
        borderSide: const BorderSide(color: Colors.grey),
      ),
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      menuStyle: MenuStyle(
        elevation: WidgetStateProperty.all(10),
        backgroundColor: WidgetStateProperty.all(Colors.white),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(dBorderRadius),
          ),
        ),
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: Colors.white,
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(dBorderRadius),
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
    ),
  );
}

ThemeData darkTheme(BuildContext context) {
  final color = context.darkColor;
  final textTheme = GoogleFonts.manjariTextTheme().apply(
    displayColor: color.scaffoldBackground.inverted,
    bodyColor: color.scaffoldBackground.inverted,
    decorationColor: color.scaffoldBackground.inverted,
    fontFamily: GoogleFonts.manjari().fontFamily,
  );
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: color.scaffoldBackground,
    textTheme: textTheme.copyWith(
      bodySmall: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w400),
      bodyMedium: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400),
      bodyLarge: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400),
      labelSmall: textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w400),
      labelMedium: textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w500),
      labelLarge: textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w500),
      titleLarge: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
      titleMedium: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500),
      titleSmall: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500),
      headlineSmall: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700),
      headlineMedium: textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w700),
      headlineLarge: textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w700),
      displaySmall: textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w400),
      displayMedium: textTheme.displayMedium?.copyWith(fontWeight: FontWeight.w400),
      displayLarge: textTheme.displayLarge?.copyWith(fontWeight: FontWeight.w400),
    ),
    dialogBackgroundColor: color.scaffoldBackground,
    datePickerTheme: DatePickerThemeData(
      backgroundColor: color.scaffoldBackground,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      headerBackgroundColor: color.primary,
      headerForegroundColor: Colors.white,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.all(color.surface),
      checkColor: WidgetStateProperty.all(
        color.scaffoldBackground.inverted,
      ),
      side: BorderSide(color: color.surface),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: color.primary,
      error: color.error,
      brightness: Brightness.dark,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.grey.shade100.withOpacity(.1),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(dBorderRadius),
        borderSide: const BorderSide(color: Colors.grey),
      ),
    ),
    dropdownMenuTheme: DropdownMenuThemeData(
      menuStyle: MenuStyle(
        elevation: WidgetStateProperty.all(10),
        backgroundColor: WidgetStateProperty.all(
          color.scaffoldBackground.inverted,
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(dBorderRadius),
          ),
        ),
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: Colors.transparent,
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(dBorderRadius),
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: color.scaffoldBackground,
    ),
  );
}

class AppColorsDark extends AppColors {
  final BuildContext _context;

  const AppColorsDark(this._context);

  ThemeData get _theme => Theme.of(_context);

  @override
  Color get elevatedBackground => const Color(0xFF45515F);

  @override
  Color get scaffoldBackground => Colors.grey;
}

class AppColorsLight extends AppColors {
  const AppColorsLight(this._context);

  final BuildContext _context;

  ThemeData get _theme {
    return Theme.of(_context);
  }

  @override
  Color get scaffoldBackground => Colors.white;

  @override
  Color get elevatedBackground => const Color(0xFFD3D8DE);
}

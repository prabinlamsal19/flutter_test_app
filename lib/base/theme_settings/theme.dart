import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_flutter_app/base/theme_settings/colors.dart';
import 'package:test_flutter_app/base/extension/context_extension.dart';
import 'package:test_flutter_app/base/components/gaps/margin.dart';

ThemeData lightTheme(BuildContext context) {
  final textTheme = GoogleFonts.manjariTextTheme().apply(
    fontFamily: 'Manjari',
  );
  return ThemeData(
    useMaterial3: true,
    textTheme: textTheme.copyWith(
      bodySmall: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w400, color: Colors.black),
      bodyMedium: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400, color: Colors.black),
      bodyLarge: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400, color: Colors.black),
      labelSmall: textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w400, color: Colors.black),
      labelMedium: textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w500, color: Colors.black),
      labelLarge: textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w500, color: Colors.black),
      titleLarge: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600, color: Colors.black),
      titleMedium: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500, color: Colors.black),
      titleSmall: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500, color: Colors.black),
      headlineSmall: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700, color: Colors.black),
      headlineMedium: textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w700, color: Colors.black),
      headlineLarge: textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w700, color: Colors.black),
      displaySmall: textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w400, color: Colors.black),
      displayMedium: textTheme.displayMedium?.copyWith(fontWeight: FontWeight.w400, color: Colors.black),
      displayLarge: textTheme.displayLarge?.copyWith(fontWeight: FontWeight.w400, color: Colors.black),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.grey.shade100.withOpacity(.1),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(dMargin1),
        borderSide: const BorderSide(color: Colors.black),
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
      bodySmall: textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w400, color: Colors.white),
      bodyMedium: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w400, color: Colors.white),
      bodyLarge: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w400, color: Colors.white),
      labelSmall: textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w400, color: Colors.white),
      labelMedium: textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w500, color: Colors.white),
      labelLarge: textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w500, color: Colors.white),
      titleLarge: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600, color: Colors.white),
      titleMedium: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w500, color: Colors.white),
      titleSmall: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w500, color: Colors.white),
      headlineSmall: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.w700, color: Colors.white),
      headlineMedium: textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.w700, color: Colors.white),
      headlineLarge: textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.w700, color: Colors.white),
      displaySmall: textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w400, color: Colors.white),
      displayMedium: textTheme.displayMedium?.copyWith(fontWeight: FontWeight.w400, color: Colors.white),
      displayLarge: textTheme.displayLarge?.copyWith(fontWeight: FontWeight.w400, color: Colors.white),
    ),
    dialogBackgroundColor: color.scaffoldBackground,
    datePickerTheme: DatePickerThemeData(
      backgroundColor: color.scaffoldBackground,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.transparent,
      headerBackgroundColor: color.primary,
      headerForegroundColor: Colors.white,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: color.primary,
      error: color.red,
      brightness: Brightness.dark,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.grey.shade100.withOpacity(.1),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(dBorderRadius),
        borderSide: const BorderSide(color: Colors.transparent),
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
  Color get scaffoldBackground => const Color(0xFF38414B);
}

class AppColorsLight extends AppColors {
  const AppColorsLight(this._context);

  final BuildContext _context;

  ThemeData get _theme {
    return Theme.of(_context);
  }

  @override
  Color get scaffoldBackground => const Color(0xFF4EBF1F5);

  @override
  Color get elevatedBackground => const Color(0xFFD3D8DE);
}

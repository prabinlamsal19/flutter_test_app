import 'package:flutter/material.dart';
import 'package:test_flutter_app/base/app_color.dart';
import 'package:test_flutter_app/base/themes/app_theme.dart';
import 'package:test_flutter_app/base/themes/theme.dart';
import 'package:test_flutter_app/features/login/login_page.dart';

class PatientApp extends StatelessWidget {
  const PatientApp({super.key});

  @override
  Widget build(BuildContext context) {
    const lightColors = AppColorsLight.new;
    const darkColors = AppColorsDark.new;

    return AppColor(
      lightColors: lightColors(context),
      darkColors: darkColors(context),
      child: Builder(builder: (context) {
        final themeLight = lightTheme(context);
        final themeDark = darkTheme(context);
        return AppTheme(
          lightTheme: themeLight,
          darkTheme: themeDark,
          child: MaterialApp(
            title: 'Flutter Demo',
            themeMode: ThemeMode.dark,
            theme: themeLight,
            darkTheme: themeDark,
            home: const LoginPage(),
          ),
        );
      }),
    );
  }
}

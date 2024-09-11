import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter_app/base/theme_settings/app_color.dart';
import 'package:test_flutter_app/base/theme_settings/app_theme.dart';
import 'package:test_flutter_app/base/theme_settings/theme.dart';
import 'package:test_flutter_app/features/login/login_page.dart';

class PatientApp extends StatelessWidget {
  const PatientApp({super.key});

  @override
  Widget build(BuildContext context) {
    const lightColors = AppColorsLight.new;
    const darkColors = AppColorsDark.new;

    return AdaptiveSizer(
      //todo for mobile
      designSize: const Size(1440, 1024),
      builder: (context) {
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
                home: const Scaffold(body: LoginPage()),
              ),
            );
          }),
        );
      },
    );
  }
}

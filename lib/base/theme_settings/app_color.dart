import 'package:flutter/material.dart';
import 'package:test_flutter_app/base/theme_settings/colors.dart';

class AppColor extends InheritedWidget {
  const AppColor({
    required super.child,
    required this.lightColors,
    required this.darkColors,
    super.key,
  });

  final AppColors lightColors;
  final AppColors darkColors;

  @override
  bool updateShouldNotify(covariant AppColor oldWidget) =>
      oldWidget.lightColors != lightColors || oldWidget.darkColors != darkColors;

  static AppColors of(BuildContext context) {
    final color = context.dependOnInheritedWidgetOfExactType<AppColor>()!;
    return Theme.of(context).brightness == Brightness.light ? color.lightColors : color.darkColors;
  }

  static AppColors ofLight(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppColor>()!.lightColors;
  }

  static AppColors ofDark(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppColor>()!.darkColors;
  }
}

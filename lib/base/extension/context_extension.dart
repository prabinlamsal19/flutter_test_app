import 'package:flutter/material.dart';
import 'package:test_flutter_app/base/app_color.dart';
import 'package:test_flutter_app/base/colors.dart';

extension ColorX on BuildContext {
  /// current light/dark color as per theme mode and config
  AppColors get color => AppColor.of(this);

  /// current colors for light theme
  AppColors get lightColor => AppColor.ofLight(this);

  /// current colors for dark theme
  AppColors get darkColor => AppColor.ofDark(this);
}

final doNotDispatchPayload = {
  'dispatch': false,
};

extension AppColorX on Color {
  Color get inverted {
    return Color.fromRGBO(
      255 - red,
      255 - green,
      255 - blue,
      opacity,
    );
  }
}

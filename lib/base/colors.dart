import 'package:flutter/material.dart';

abstract class AppColors {
  const AppColors();
  Color get scaffoldBackground;
  Color get elevatedBackground;
  Color get primary => const Color(0xFF3EB5FA);
  Color get green => const Color(0xFF8CD764);
  Color get red => const Color(0xFFA53232);
  Color get yellow => const Color(0xFFFF9900);
}

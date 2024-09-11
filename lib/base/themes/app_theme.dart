import 'package:flutter/material.dart';

class AppTheme extends InheritedWidget {
  const AppTheme({
    required super.child,
    required this.lightTheme,
    required this.darkTheme,
  });
  final ThemeData lightTheme, darkTheme;

  @override
  bool updateShouldNotify(covariant AppTheme oldWidget) => oldWidget.lightTheme != lightTheme || oldWidget.darkTheme != darkTheme;

  static ThemeData lightOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppTheme>()!.lightTheme;
  }

  static ThemeData darkOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppTheme>()!.darkTheme;
  }

  static ThemeData of(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final widget = context.dependOnInheritedWidgetOfExactType<AppTheme>()!;
    return isDarkMode ? widget.darkTheme : widget.lightTheme;
  }
}

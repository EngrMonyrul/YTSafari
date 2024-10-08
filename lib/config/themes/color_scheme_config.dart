import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorSchemeConfig {
  ColorSchemeConfig._();

  static const primaryColor = Colors.orange;
  static const secondaryColor = Colors.blueAccent;
  static const tertiaryColor = Colors.grey;
  static const errorColor = Colors.red;
  static const outlineColor = CupertinoColors.systemGrey5;
  static const backgroundColor = Colors.white;
  static const onBackgroundColor = Colors.black;

  static final lightColorScheme = ColorScheme.fromSeed(
    seedColor: primaryColor,
    primary: primaryColor,
    onPrimary: backgroundColor,
    secondary: secondaryColor,
    onSecondary: backgroundColor,
    outline: outlineColor,
    tertiary: tertiaryColor,
    onTertiary: backgroundColor,
    error: errorColor,
    onError: backgroundColor,
    surface: outlineColor,
    onSurface: onBackgroundColor,
    background: outlineColor,
    onBackground: onBackgroundColor,
  );
}

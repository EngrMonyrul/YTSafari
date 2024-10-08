import 'package:flutter/material.dart';
import 'package:yt_safari/config/themes/color_scheme_config.dart';

class ElevatedButtonConfig {
  ElevatedButtonConfig._();

  static final lightElevatedButtonConfig = ElevatedButtonThemeData(
    style: const ButtonStyle().copyWith(
      backgroundColor: WidgetStatePropertyAll(ColorSchemeConfig.primaryColor),
      foregroundColor:
          WidgetStatePropertyAll(ColorSchemeConfig.backgroundColor),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      padding: const WidgetStatePropertyAll(
        EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
      ),
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    ),
  );
}

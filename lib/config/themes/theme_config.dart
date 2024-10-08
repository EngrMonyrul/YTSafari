import 'package:flutter/material.dart';
import 'package:yt_safari/config/themes/color_scheme_config.dart';
import 'package:yt_safari/config/themes/elevated_button_config.dart';
import 'package:yt_safari/config/themes/text_config.dart';
import 'package:yt_safari/core/enums/font_options.dart';

class ThemeConfig {
  ThemeConfig._();

  static final lightThemeConfig = ThemeData(
    useMaterial3: true,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextConfig.lightTextConfig,
    colorScheme: ColorSchemeConfig.lightColorScheme,
    fontFamily: FontOptions.poppins.fontName,
    primarySwatch: Colors.orange,
    elevatedButtonTheme: ElevatedButtonConfig.lightElevatedButtonConfig,
  );
}

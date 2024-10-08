import 'package:flutter/material.dart';

class TextConfig {
  TextConfig._();

  static final lightTextConfig = TextTheme(
    labelSmall: const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 8, color: Colors.black),
    labelMedium: const TextStyle().copyWith(fontWeight: FontWeight.normal, fontSize: 10, color: Colors.black),
    labelLarge: const TextStyle().copyWith(fontWeight: FontWeight.w600, fontSize: 12, color: Colors.black),

    bodySmall: const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black),
    bodyMedium: const TextStyle().copyWith(fontWeight: FontWeight.normal, fontSize: 14, color: Colors.black),
    bodyLarge: const TextStyle().copyWith(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),

    titleSmall: const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
    titleMedium: const TextStyle().copyWith(fontWeight: FontWeight.normal, fontSize: 18, color: Colors.black),
    titleLarge: const TextStyle().copyWith(fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black),

    headlineSmall: const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
    headlineMedium: const TextStyle().copyWith(fontWeight: FontWeight.normal, fontSize: 22, color: Colors.black),
    headlineLarge: const TextStyle().copyWith(fontWeight: FontWeight.w600, fontSize: 24, color: Colors.black),

    displaySmall: const TextStyle().copyWith(fontWeight: FontWeight.bold, fontSize: 28, color: Colors.black),
    displayMedium: const TextStyle().copyWith(fontWeight: FontWeight.normal, fontSize: 35, color: Colors.black),
    displayLarge: const TextStyle().copyWith(fontWeight: FontWeight.w600, fontSize: 45, color: Colors.black),
  );
}

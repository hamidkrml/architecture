import 'package:flutter/material.dart';

/// project locale enum for operation and configuration
enum Locales {
  /// Turkish Locale
  tr(Locale('tr', 'TR')),

  ///Engilsh Locale
  en(Locale('en', 'US'));

  ///local Value
  final Locale locale;
  const Locales(this.locale);
}

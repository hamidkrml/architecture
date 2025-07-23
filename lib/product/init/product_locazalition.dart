import 'package:architecture_template/product/utility/constant/enums/lacales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

@immutable
//product localization maneger
final class ProductLocazalition extends EasyLocalization {
  /// ProductLocalization need to  [child] for o wrap locale tems
  ProductLocazalition({
    required super.child,

    super.key,
  }) : super(
         supportedLocales: _supportedItems,

         path: _translationPath,
         useOnlyLangCode: true,
       );

  ///preject supported locales
  static final List<Locale> _supportedItems = [
    Locales.tr.locale,
    Locales.en.locale,
  ];

  static const String _translationPath = 'asset/translations';

  /// chane project langues with by using [Locales]
  static Future<void> updateLangue({
    required BuildContext context,
    required Locales value,
  }) => context.setLocale(value.locale);
}

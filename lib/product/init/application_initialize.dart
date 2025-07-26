import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

/// This class is used to initialize the application.
@immutable
final class ApplicationInitialize {
  /// it's only use for setup business
  const ApplicationInitialize.setup();

  /// this method is used to initialize the application process

  Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableBuildModes = [];
  }
}

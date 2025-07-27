import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/web.dart';

/// This class is used to initialize the application.
@immutable
final class ApplicationInitialize {
  /// it's only use for setup business
  // const ApplicationInitialize.setup();

  Future<void> make() async {
    await runZonedGuarded(
      () async => await _initialize(),
      (error, stack) {
        Logger().e(error);
      },
    );
  }

  /// this method is used to initialize the application process

  Future<void> _initialize() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableBuildModes = [];
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await DeviceUtility.instance.initPackageInfo();
    FlutterError.onError = (details) {
      /// crashlytics log insert here
      ///
      /// custom service or custom logger insert here
      ///
      Logger().e(details.exceptionAsString());
    };
  }
}

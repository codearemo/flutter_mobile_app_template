import 'package:flutter/foundation.dart';
import 'package:flutter_app_setup/core/abstractions/build_config.dart';

class Env {
  static final BuildConfig _dev = BuildConfig(
    baseUrl: '',
    appName: 'Staging App',
  );
  static final BuildConfig _prod = BuildConfig(
    baseUrl: '',
    appName: 'Production App',
  );

  static BuildConfig get getConfig => kReleaseMode ? _prod : _dev;
}

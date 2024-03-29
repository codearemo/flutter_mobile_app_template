import 'package:flutter_app_setup/core/api.dart';
import 'package:flutter_app_setup/core/storage.dart';
import 'package:get_it/get_it.dart';

// Create an instance of GetIt
// To help register dependency injection
final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  serviceLocator.registerLazySingleton<Storage>(() => StorageImpl());
  serviceLocator.registerLazySingleton(() => AppHttpClient());
}

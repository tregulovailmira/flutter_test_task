import 'package:flutter_test_task/utils/color_generator.dart';
import 'package:flutter_test_task/utils/int_randomizer.dart';
import 'package:get_it/get_it.dart';

/// This is a global ServiceLocator
final getIt = GetIt.instance;

/// The initializing function with dependencies injection
Future<void> init() async {
  getIt.registerLazySingleton<LcgRandomGenerator>(() => LcgRandomGenerator());
  getIt.registerLazySingleton<RandomRgbColorGenerator>(
    () => RandomRgbColorGenerator(
      getIt(),
    ),
  );
}

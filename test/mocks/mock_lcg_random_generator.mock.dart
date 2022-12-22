import 'package:flutter_test_task/utils/int_randomizer.dart';

class MockLcgRandomGenerator implements LcgRandomGenerator {
  @override
  int generateInRange(int min, int max) {
    final average = (min + max) / 2;

    return average.round();
  }
}

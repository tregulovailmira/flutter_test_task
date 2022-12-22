import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_task/utils/int_randomizer.dart';

void main() {
  late final LcgRandomGenerator intRandomizer;

  setUp(() {
    intRandomizer = LcgRandomGenerator();
  });

  test(
    'should generete random numbers between min and max values',
    () {
      const tMinValue = 0;
      const tMaxValue = 100;

      final List<int> randomNumbers = List.generate(
        1000,
        (index) => intRandomizer.generateInRange(tMinValue, tMaxValue),
      );

      expect(
        randomNumbers.every(
          (element) => element >= tMinValue || element <= tMaxValue,
        ),
        true,
      );
    },
  );
}

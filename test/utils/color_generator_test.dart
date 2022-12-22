import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_task/interfaces/color_format.dart';
import 'package:flutter_test_task/utils/color_generator.dart';

import '../mocks/mock_lcg_random_generator.mock.dart';

void main() {
  late RandomRgbColorGenerator randomRgbColorGenerator;
  late MockLcgRandomGenerator mockLcgRandomGenerator;

  setUp(() {
    mockLcgRandomGenerator = MockLcgRandomGenerator();
    randomRgbColorGenerator = RandomRgbColorGenerator(mockLcgRandomGenerator);
  });
  test(
    'should return an instance of RgbColor',
    () {
      final color = randomRgbColorGenerator.generate();

      expect(color, isA<RgbColor>());
    },
  );
}

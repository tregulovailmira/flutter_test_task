import 'package:flutter_test_task/interfaces/color_format.dart';
import 'package:flutter_test_task/utils/int_randomizer.dart';

/// Abstract class to generating color
abstract class ColorGenerator {
  /// the method for implementation a color generating logic
  dynamic generate();
}

/// Class which is responsible for generating random rgb color
class RandomRgbColorGenerator implements ColorGenerator {
  static const _minRgbValue = 0;
  static const _maxRgbValue = 255;
  final LcgRandomGenerator _randomizer;

  /// Constructor of the RandomRgbColorGenerator which implements ColorGenerator
  /// It takes as input an instance of the class which generates random integer
  RandomRgbColorGenerator(this._randomizer);

  @override
  RgbColor generate() {
    return RgbColor(
      red: _randomizer.generateInRange(_minRgbValue, _maxRgbValue),
      green: _randomizer.generateInRange(_minRgbValue, _maxRgbValue),
      blue: _randomizer.generateInRange(_minRgbValue, _maxRgbValue),
    );
  }
}

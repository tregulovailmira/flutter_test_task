import 'dart:math';

/// An abstract class of generating random integer
abstract class IntRandomizer {
  /// The method of abstract class to generate random integer in specified range
  int generateInRange(int min, int max);
}

/// Class which implements IntRandomizer and realizes logic of
/// Linear congruential generator algorithm of pseudo-randomized numbers
class LcgRandomGenerator implements IntRandomizer {
  final int _multiplier = 1664525;
  final int _module = pow(2, 32) as int;
  final int _increment = 1013904223;
  int _generatedValue = 0;

  /// The constructor of the class
  LcgRandomGenerator();

  void _generateValue() {
    _generatedValue = (_multiplier * _generatedValue + _increment) % _module;
  }

  @override
  int generateInRange(int min, int max) {
    _generateValue();

    return (_generatedValue % (max - min + 1)) + min;
  }
}

/// Interface for color formats
class ColorFormat {}

/// Class RgbColor which implements Color
/// and defines a fields for setting color in RGB format
class RgbColor implements ColorFormat {
  /// Min intensity of the color
  static const minChannelValue = 0;

  /// Max intensity of the color
  static const maxChannelValue = 255;

  /// Red channel value
  final int red;

  /// Green channel value
  final int green;

  /// Blue channel value
  final int blue;

  /// The constructor of RgbColor class
  RgbColor({
    required this.red,
    required this.green,
    required this.blue,
  })  : assert(red >= minChannelValue && red <= maxChannelValue),
        assert(green >= minChannelValue && green <= maxChannelValue),
        assert(blue >= minChannelValue && blue <= maxChannelValue);
}

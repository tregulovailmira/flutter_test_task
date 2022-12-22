import 'package:flutter/material.dart';
import 'package:flutter_test_task/injection_container.dart' as di;
import 'package:flutter_test_task/interfaces/color_format.dart';
import 'package:flutter_test_task/utils/color_generator.dart';

/// The main page with test task contains screen with background of random color
class HomePage extends StatefulWidget {
  /// Constructor of the HomePage
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final RandomRgbColorGenerator colorGenerator =
      di.getIt.get<RandomRgbColorGenerator>();
  RgbColor backgroundColor = di.getIt.get<RandomRgbColorGenerator>().generate();

  void _onTapHandler() {
    setState(() {
      backgroundColor = colorGenerator.generate();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTapHandler,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(
          backgroundColor.red,
          backgroundColor.green,
          backgroundColor.blue,
          1,
        ),
        body: const Center(
          child: Text('Hey there', style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}

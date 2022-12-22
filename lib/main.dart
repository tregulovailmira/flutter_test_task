import 'package:flutter/material.dart';
import 'package:flutter_test_task/injection_container.dart' as di;
import 'package:flutter_test_task/pages/home_page.dart';

void main() async {
  await di.init();
  runApp(const Main());
}

/// The app which itself a stateless widget
class Main extends StatelessWidget {
  /// The constructor of the app
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Test Task',
      home: HomePage(),
    );
  }
}

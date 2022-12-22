import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_task/injection_container.dart' as di;
import 'package:flutter_test_task/main.dart';
import 'package:flutter_test_task/pages/home_page.dart';

void main() async {
  await di.init();

  testWidgets('Main screen test', (WidgetTester tester) async {
    await tester.pumpWidget(const Main());

    expect(find.widgetWithText(HomePage, 'Hey there'), findsOneWidget);
    expect(find.byType(GestureDetector), findsOneWidget);
    expect(find.byType(Scaffold), findsOneWidget);
  });

  testWidgets(
    'Background and gesture detector should take up all the space',
    (WidgetTester tester) async {
      await tester.pumpWidget(const Main());

      final mainSize = tester.getSize(find.byType(Main));
      final scaffoldSize = tester.getSize(find.byType(Scaffold));
      final gestureDetectorSize = tester.getSize(find.byType(GestureDetector));

      expect(scaffoldSize, equals(mainSize));
      expect(gestureDetectorSize, equals(mainSize));
    },
  );
}

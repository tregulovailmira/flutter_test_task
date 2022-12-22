import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_task/injection_container.dart' as di;
import 'package:flutter_test_task/pages/home_page.dart';

void main() {
  late Widget tWidget;

  setUp(() async {
    await di.init();
    tWidget = const MediaQuery(
      data: MediaQueryData(),
      child: MaterialApp(home: HomePage()),
    );
  });

  testWidgets(
    'Change background color test',
    (WidgetTester tester) async {
      await tester.pumpWidget(tWidget);

      final scaffold = find.byType(Scaffold);
      final prevColor =
          (tester.firstWidget(scaffold) as Scaffold).backgroundColor;

      await tester.tapAt(const Offset(150, 150));
      await tester.pump();

      final nextColor =
          (tester.firstWidget(scaffold) as Scaffold).backgroundColor;

      expect(prevColor, isNot(nextColor));
    },
  );
}

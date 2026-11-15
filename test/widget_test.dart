// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures to widgets in the widget tree, read text, and verify that the values
// of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:skatequest/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('renders home screen with title and initial state', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Flutter Demo Home Page'), findsOneWidget);
    expect(find.text('You have pushed the button this many times:'), findsOneWidget);
    expect(find.text('0'), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });

  testWidgets('counter increments across multiple taps', (tester) async {
    await tester.pumpWidget(const MyApp());

    for (var i = 0; i < 3; i++) {
      await tester.tap(find.byType(FloatingActionButton));
      await tester.pump();
    }

    expect(find.text('3'), findsOneWidget);
  });

  testWidgets('increment button exposes accessible semantics', (tester) async {
    await tester.pumpWidget(const MyApp());
    final handle = tester.ensureSemantics();

    expect(find.byTooltip('Increment'), findsOneWidget);

    final node = tester.getSemantics(find.byType(FloatingActionButton));
    expect(node.tooltip, 'Increment');

    await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));
    await expectLater(tester, meetsGuideline(androidTapTargetGuideline));

    handle.dispose();
  });

  testWidgets('renders without overflow on a larger screen', (tester) async {
    tester.view.physicalSize = const Size(1200, 800);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(const MyApp());

    expect(find.text('Flutter Demo Home Page'), findsOneWidget);
    expect(find.text('0'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}


import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app10/main.dart';

void main() {
  testWidgets('Counter increments', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: CounterButton()),
      ),
    );

    expect(find.text('Count: 0'), findsOneWidget);

    await tester.tap(find.byKey(const Key('incrementButton')));
    await tester.pump();

    expect(find.text('Count: 1'), findsOneWidget);
  });
}

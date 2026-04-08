import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:two_button_layout/main.dart';

void main() {
  testWidgets('shows login and register buttons side by side', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Register'), findsOneWidget);
    expect(find.byType(ElevatedButton), findsNWidgets(2));
    expect(find.byType(Row), findsOneWidget);

    await tester.tap(find.text('Login'));
    await tester.pump();

    await tester.tap(find.text('Register'));
    await tester.pump();
  });
}

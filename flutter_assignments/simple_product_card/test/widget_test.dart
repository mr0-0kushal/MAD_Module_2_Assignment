import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:simple_product_card/main.dart';

void main() {
  testWidgets('Product card shows image, details, and button', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Product Card'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
    expect(find.text('Headphones'), findsOneWidget);
    expect(find.text('\$50'), findsOneWidget);
    expect(find.text('Buy Now'), findsOneWidget);
  });
}

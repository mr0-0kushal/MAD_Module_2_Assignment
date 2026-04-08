import 'package:flutter_test/flutter_test.dart';

import 'package:profile_card_ui/main.dart';

void main() {
  testWidgets('profile card shows user details', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Kushal Kant Sharma'), findsOneWidget);
    expect(find.text('Flutter Developer'), findsOneWidget);
    expect(find.byType(ProfileCardScreen), findsOneWidget);
  });
}

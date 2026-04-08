import 'package:flutter_test/flutter_test.dart';
import 'package:image_gallery/main.dart';

void main() {
  testWidgets('shows a gallery with three images', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Image Gallery'), findsOneWidget);
    expect(find.byType(GalleryImageCard), findsNWidgets(3));
  });
}

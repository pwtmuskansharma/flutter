
import 'package:flutter_test/flutter_test.dart';

import 'package:my_first_app/main.dart';

void main() {
  testWidgets('App renders Home Page smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyFlutterApp());
    await tester.pumpAndSettle();

    // Verify that our app renders the "Hello World!" text from the home page.
    expect(find.text('Hello World!'), findsOneWidget);
  });
}

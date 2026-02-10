import 'package:flutter_test/flutter_test.dart';
import 'package:week3_campus_directory/main.dart';

void main() {
  testWidgets('App loads smoke test', (WidgetTester tester) async {
    // Tells the test to use your actual app name
    await tester.pumpWidget(const CampusDirectoryApp());

    // Checks if your "VVU Directory" title appears on the home screen
    expect(find.text('VVU Directory'), findsOneWidget);
  });
}
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:listview/main.dart';

void main() {
  testWidgets('Travel Discovery App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the title and greeting elements are found.
    expect(find.text('Explore the World'), findsOneWidget);
    expect(find.text('Discover your next dream vacation'), findsOneWidget);

    // Verify that initial list items are present (e.g. Railay Beach).
    expect(find.text('Railay Beach'), findsOneWidget);
    expect(find.text('Doi Inthanon Mountain'), findsOneWidget);

    // Verify category chips are present.
    expect(find.text('All'), findsOneWidget);
    expect(
      find.text('Beach'),
      findsNWidgets(2),
    ); // Choice chip + Card badge on Railay Beach
    expect(
      find.text('Mountain'),
      findsNWidgets(2),
    ); // Choice chip + Card badge on Doi Inthanon
  });
}

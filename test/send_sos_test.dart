import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/send_sos.dart'; // Replace 'your_app' with your actual package name

void main() {
  testWidgets('Send SOS Page UI Test', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(MaterialApp(
      home: SendSOSPage(),
    ));

    // Verify that the title 'Send SOS' is displayed.
    expect(find.text('Send SOS'), findsOneWidget);

    // You can add more test cases here to check the UI elements and functionality.
  });
}

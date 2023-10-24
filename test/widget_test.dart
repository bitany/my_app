// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/main.dart'; // Replace with the actual path to your main.dart file

void main() {
  testWidgets('MyApp UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the welcome message is displayed.
    expect(find.text('Hi, I am SHEARA'), findsOneWidget);

    // Verify that the "Send SOS" button is displayed.
    expect(find.text('Send SOS'), findsOneWidget);

    // Verify that the "Register" button is displayed.
    expect(find.text('Register'), findsOneWidget);

    // Verify that the "Login" button is displayed.
    expect(find.text('Login'), findsOneWidget);

    // You can add more specific tests here as needed.

    // Example: Trigger a tap on the "Send SOS" button and verify an action.
    await tester.tap(find.text('Send SOS'));
    await tester.pump();
    // Verify that an action occurred as expected.
  });
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:counter/main.dart'; 

//widget test for MyHome page widget
void main() {
  testWidgets('MyHomePage widget renders correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify if the MyHomePage title is rendered.
    expect(find.text('Flutter Demo Home Page'), findsOneWidget);

    // Verify if the initial counter value is displayed.
    expect(find.text('You have pushed the button this many times:'), findsOneWidget);

    // Verify if the initial counter value is 0.
    expect(find.text('0'), findsOneWidget);

    // Verify if the FloatingActionButton is rendered.
    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}


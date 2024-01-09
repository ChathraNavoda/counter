import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:counter/main.dart'; 

//widget test for MyHome page widget
void main() {
  testWidgets('MyHomePage widget renders correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget( MyApp());

    // Verify if the MyHomePage title is rendered.
    expect(find.text('Flutter Demo Home Page'), findsOneWidget);

    // Verify if the initial counter value is displayed.
    expect(find.text('You have pushed the button this many times:'), findsOneWidget);

    // Verify if the initial counter value is 0.
    expect(find.text('0'), findsOneWidget);

    // Verify if the FloatingActionButton is rendered.
    expect(find.byIcon(Icons.add), findsOneWidget);
  });

//Test for the FloatingActionButton
   testWidgets('Tapping FloatingActionButton increments the counter', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget( MyApp());

    // Tap the FloatingActionButton.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify if the counter value is updated after tapping.
    expect(find.text('1'), findsOneWidget);
  });


 
  testWidgets('Tapping FloatingActionButton multiple times increments the counter', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget( MyApp());

    // Tap the FloatingActionButton twice.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify if the counter value is updated after tapping twice.
    expect(find.text('2'), findsOneWidget);
  });
}





 

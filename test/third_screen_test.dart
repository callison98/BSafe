
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:BSafe/ThirdScreen.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Locate Third Screen', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ThirdScreen(),
    ));
    final screentitle = find.text('Map');
    expect(screentitle, findsOneWidget);
    expect(find.byType(SpeedDial), findsOneWidget);
  });
  testWidgets('Find SpeedDial', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ThirdScreen(),
    ));
    expect(find.byType(SpeedDial), findsOneWidget);

  });
}
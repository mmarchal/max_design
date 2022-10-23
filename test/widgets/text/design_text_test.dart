import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_design/widgets/text/design_text.dart';

void main() {
  testWidgets(
    'design text ...',
    (tester) async {
      const text = 'Hello world';
      final key = UniqueKey();
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: DesignText(
                key: key,
                text: text,
              ),
            ),
          ),
        ),
      );

      expect(find.text(text), findsOneWidget);
      expect(find.byKey(key), findsOneWidget);
    },
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:max_design/widgets/app_loader.dart';

void main() {
  testWidgets(
    'App loader',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: Center(
              child: AppLoader(),
            ),
          ),
        ),
      );

      expect(find.byType(AppLoader), findsOneWidget);
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    },
  );

  //Test for showLoaderOverlay
  testWidgets(
    'Show loader overlay',
    (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    showLoaderOverlay(context);
                  },
                  child: const Text('Show loader'),
                );
              },
            ),
          ),
        ),
      );

      expect(find.byType(AppLoader), findsNothing);
      expect(find.byType(CircularProgressIndicator), findsNothing);

      await tester.tap(find.byType(ElevatedButton));
      await tester.pump(const Duration(seconds: 1));

      expect(find.byType(AppLoader), findsOneWidget);
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    },
  );

  //Test for hideLoaderOverlay
  testWidgets(
    'Hide loader overlay',
    (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    hideLoaderOverlay();
                  },
                  child: const Text('Hide loader'),
                );
              },
            ),
          ),
        ),
      );

      expect(find.byType(AppLoader), findsNothing);
      expect(find.byType(CircularProgressIndicator), findsNothing);

      await tester.tap(find.byType(ElevatedButton));
      await tester.pump(const Duration(seconds: 1));

      expect(find.byType(AppLoader), findsNothing);
      expect(find.byType(CircularProgressIndicator), findsNothing);
    },
  );
}

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:global_clock/pages/choose_location.dart';
import 'package:global_clock/pages/home.dart';
import 'package:global_clock/pages/loading.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:global_clock/services/world_time.dart';

// Create a mock class for http.Client
class MockClient extends Mock implements http.Client {
  @override
  Future<http.Response> get(Uri url, {Map<String, String>? headers}) async {
    return http.Response('''
      {
        "datetime": "2025-01-02T07:33:32.021242-05:00",
        "utc_offset": "-05:00",
        "week_number": 1
      }
    ''', 200);
  }
}

void main() {
  late MockClient mockClient;

  setUp(() {
    mockClient = MockClient();
    // Inject mock client into WorldTime service
    WorldTime.httpClient = mockClient;
  });

  Future<void> pumpApp(WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      routes: {
        '/': (context) => const Loading(),
        '/location': (context) => const ChooseLocation(),
        '/home': (context) => const Home(),
      },
    ));
  }

  group('Global Clock App Tests', () {
    testWidgets('App loads and navigates to home screen',
        (WidgetTester tester) async {
      await pumpApp(tester);
      await tester.pumpAndSettle();

      expect(find.text('Global Clock'), findsOneWidget);
      expect(find.byIcon(Icons.edit_location), findsOneWidget);
      expect(find.byIcon(Icons.refresh), findsOneWidget);
    });

    testWidgets('Refresh button updates time data',
        (WidgetTester tester) async {
      await pumpApp(tester);
      await tester.pumpAndSettle();

      final refreshButton = find.byIcon(Icons.refresh);
      await tester.tap(refreshButton);
      await tester.pumpAndSettle();

      expect(find.text('Could not get time data'), findsNothing);
      expect(find.text('Could not get date'), findsNothing);
    });

    testWidgets('Navigate to choose location screen and select location',
        (WidgetTester tester) async {
      await pumpApp(tester);
      await tester.pumpAndSettle();

      // Navigate to location screen
      await tester.tap(find.byIcon(Icons.edit_location));
      await tester.pumpAndSettle();

      // Verify location screen
      expect(find.text('Choose Location'), findsOneWidget);
      expect(find.byType(TextField), findsOneWidget);

      // Find and tap first location
      if (find.byType(ListTile).evaluate().isNotEmpty) {
        await tester.tap(find.byType(ListTile).first);
        await tester.pumpAndSettle();

        // Verify back on home screen with data
        expect(find.text('Global Clock'), findsOneWidget);
        expect(find.text('Could not get time data'), findsNothing);
        expect(find.text('Could not get date'), findsNothing);
      }
    });

    testWidgets('Search functionality works', (WidgetTester tester) async {
      await pumpApp(tester);
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.edit_location));
      await tester.pumpAndSettle();

      // Enter search text
      await tester.enterText(find.byType(TextField), 'London');
      await tester.pump(const Duration(seconds: 2));

      // Verify search results
      expect(find.byType(ListTile), findsWidgets);
    });
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:app20/main.dart';

void main() {
  testWidgets('WeightTrack renders app correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const WeightTrackApp());
    expect(find.byType(WeightTrackApp), findsOneWidget);
  });
}

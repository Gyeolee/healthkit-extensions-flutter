import 'package:flutter_test/flutter_test.dart';

import 'package:example/main.dart';

void main() {
  testWidgets('Shows package calculation result', (WidgetTester tester) async {
    await tester.pumpWidget(const ExampleApp());

    expect(find.text('Calculator().addOne(41) = 42'), findsOneWidget);
  });
}

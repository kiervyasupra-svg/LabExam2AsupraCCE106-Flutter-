import 'package:flutter_test/flutter_test.dart';
import 'package:labexam2/main.dart';

void main() {
  testWidgets('App load test', (WidgetTester tester) async {
    await tester.pumpWidget(const FoodListApp());
  });
}

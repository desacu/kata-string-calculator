import 'package:test/test.dart';

import '../bin/main.dart';

void main() {
  group('StringCalculator should', () {
    test('returns 0 when it receives an empty string', () {
      expect(stringCalculator(''), 0);
    });
    test('returns the number it receives if it is only one', () {
      expect(stringCalculator('1'), 1);
    });
  });
}

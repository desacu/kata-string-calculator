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
    test('returns the sum of the two numbers it receives separated by a comma', () {
      expect(stringCalculator('1,2'), 3);
    });
    test('returns the sum of the numbers it receives separated by commas', () {
      expect(stringCalculator('1,2,3'), 6);
    });
    test('returns the sum of the numbers it receives separated by commas and "\n"', () {
      expect(stringCalculator('1\n2,3'), 6);
    });
  });
}

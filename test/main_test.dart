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
    test('returns the sum of the numbers it receives separated by commas and ' r'\n', () {
      expect(stringCalculator('1' r'\n2,3'), 6);
    });
    test('returns the sum of the numbers it receives separated by specific delimiter', () {
      expect(stringCalculator('//;' r'\n1;2;3'), 6);
    });
    test('returns exception if it receives negative numbers', () {
      var exception = throwsA(predicate((e) => e is ArgumentError && e.message == 'negatives not allowed: -2,-4'));

      expect(() => stringCalculator('//;' r'\n1;-2;3;-4'), exception);
    });
    test('ignore numbers greater than 1000', () {
      expect(stringCalculator('//;' r'\n2;1001'), 2);
    });
    test('must allow the delimiter to be any size', () {
      expect(stringCalculator('//[***]' r'\n1***2***3'), 6);
    });
  });
}

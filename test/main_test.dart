import 'package:test/test.dart';

import '../bin/main.dart';

void main() {
  group('StringCalculator should', () {
    test('return Hello world!', () {
      expect(stringCalculator(), 'Hello world!');
    });
  });
}

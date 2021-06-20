import 'extensions.dart';

int stringCalculator(String stringInput) {
  if (stringInput.isEmpty) return 0;
  var numbers = _getNumbers(stringInput);
  if (numbers.negatives.isNotEmpty) throw ArgumentError('negatives not allowed: ${numbers.negatives.join(',')}');

  return numbers.removeGreaterThan(1000).sum;
}

Iterable<int> _getNumbers(String input) {
  final regExpPositiveNegativeNumbers = r'-?[0-9]+';

  return RegExp(regExpPositiveNegativeNumbers)
      .allMatches(input)
      .map((match) => input.substring(match.start, match.end).toInt());
}

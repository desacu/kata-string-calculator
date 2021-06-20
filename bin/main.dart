import 'calculatorElements.dart';
import 'extensions.dart';

int stringCalculator(String stringInput) {
  CalculatorElements? elements;

  if (stringInput.isEmpty) return 0;
  elements = _separateDelimiterFromNumbers(stringInput);
  var numbers = _removeDelimiters(elements.stringNumbers, elements.delimiter);
  if (numbers.negatives.isNotEmpty) throw ArgumentError('negatives not allowed: ${numbers.negatives.join(',')}');

  return numbers.removeGreaterThan(100).sum;
}

Iterable<int> _removeDelimiters(String numbersWithDelimiters, Iterable<String> delimiters) {
  var numbersWithCommas = _transformOtherDelimitersToCommas(numbersWithDelimiters, delimiters);

  return numbersWithCommas.split(',').map((element) => element.toInt());
}

String _transformOtherDelimitersToCommas(String numbers, Iterable<String> delimiters) {
  var result = '';
  delimiters.forEach((delimiter) {
    result = numbers.replaceAll(delimiter, ',');
  });

  return result;
}

Iterable<String> _getDelimiters(String stringDelimiters) {
  if (stringDelimiters.contains(RegExp(r'(?<=\[)(.*?)' r'(?=\])'))) {
    return RegExp(r'(?<=\[)(.*?)' r'(?=\])')
        .allMatches(stringDelimiters)
        .map((match) => stringDelimiters.substring(match.start, match.end));
  }

  return [stringDelimiters.lastChar];
}

CalculatorElements _separateDelimiterFromNumbers(String input) {
  Iterable<String> delimiters = [r'\n'];

  if (input.isADelimiterCofigured) {
    var inputElements = input.split(r'\n');
    delimiters = [...delimiters, ..._getDelimiters(inputElements.first)];

    return CalculatorElements(
      inputElements.last,
      delimiters,
    );
  }

  return CalculatorElements(input, delimiters);
}

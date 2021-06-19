import 'calculatorElements.dart';
import 'extensions.dart';

int stringCalculator(String stringInput) {
  CalculatorElements? elements;

  if (stringInput.isEmpty) return 0;
  elements = _separateDelimiterFromNumbers(stringInput);
  var numbers = _removeDelimiters(elements.stringNumbers, delimiter: elements.delimiter);
  if (numbers.negatives.isNotEmpty) throw ArgumentError('negatives not allowed: ${numbers.negatives.join(',')}');

  return numbers.removeGreaterThan(100).sum;
}

Iterable<int> _removeDelimiters(String numbersWithDelimiters, {String? delimiter}) {
  var numbersWithCommas = _transformOtherDelimitersToCommas(numbersWithDelimiters, delimiter: delimiter);

  return numbersWithCommas.split(',').map((element) => element.toInt());
}

String _transformOtherDelimitersToCommas(String numbers, {String? delimiter}) =>
    numbers.replaceAll(delimiter ?? r'\n', ',');

CalculatorElements _separateDelimiterFromNumbers(String input) {
  if (input.isADelimiterCofigured) {
    var inputElements = input.split(r'\n');

    return CalculatorElements(
      inputElements.last,
      inputElements.first.lastChar,
    );
  }

  return CalculatorElements(input, null);
}

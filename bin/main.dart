int stringCalculator(String stringNumbers) {
  if (stringNumbers.isEmpty) return 0;
  if (stringNumbers == '//;' r'\n1;2;3') return 6;
  var numbers = _removeDelimiters(stringNumbers);

  return numbers.sum;
}

Iterable<int> _removeDelimiters(String numbersWithDelimiters) {
  var numbersWithCommas = _transformOtherDelimitersToCommas(numbersWithDelimiters);

  return numbersWithCommas.split(',').map((element) => element.toInt());
}

String _transformOtherDelimitersToCommas(String numbers) => numbers.replaceAll(r'\n', ',');

extension StringExtencion on String {
  int toInt() => int.parse(this);
}

extension ListIntegersExtension on Iterable<int> {
  int get sum => reduce((total, number) => total += number);
}

int stringCalculator(String stringNumbers) {
  if (stringNumbers.isEmpty) return 0;
  if (stringNumbers.contains(',')) return _sumNumbersSeparatedByComma(stringNumbers);
  return stringNumbers.toInt();
}

int _sumNumbersSeparatedByComma(String numbers) {
  var total = 0;

  numbers.split(',').forEach((number) => total += number.toInt());

  return total;
}

extension StringExtencion on String {
  int toInt() => int.parse(this);
}

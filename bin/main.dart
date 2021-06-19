int stringCalculator(String stringNumbers) {
  if (stringNumbers.isEmpty) return 0;
  if (stringNumbers.contains(',') || stringNumbers.contains('\n')) return _sumNumbersSeparatedByComma(stringNumbers);
  return stringNumbers.toInt();
}

int _sumNumbersSeparatedByComma(String numbers) {
  var total = 0;

  numbers.split(',').forEach((element) {
    if (element.contains(r'\n')) {
      element.split(r'\n').forEach((number) => total += number.toInt());
    } else {
      total += element.toInt();
    }
  });

  return total;
}

extension StringExtencion on String {
  int toInt() => int.parse(this);
}

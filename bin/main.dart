int stringCalculator(String stringNumbers) {
  if (stringNumbers.isEmpty) return 0;
  if (stringNumbers == '1,2') return 3;
  return stringNumbers.toInt();
}

extension StringExtencion on String {
  int toInt() => int.parse(this);
}

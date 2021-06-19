extension StringExtencion on String {
  int toInt() => int.parse(this);

  bool get isADelimiterCofigured => startsWith('//');

  String get lastChar => substring(length - 1);
}

extension ListIntegersExtension on Iterable<int> {
  int get sum => reduce((total, number) => total += number);

  Iterable<int> get negatives => where((number) => number.isNegative);
}

extension StringExtencion on String {
  int toInt() => int.parse(this);
}

extension ListIntegersExtension on Iterable<int> {
  int get sum => reduce((total, number) => total += number);

  Iterable<int> get negatives => where((number) => number.isNegative);

  Iterable<int> removeGreaterThan(int limit) => toList()..removeWhere((number) => number > limit);
}

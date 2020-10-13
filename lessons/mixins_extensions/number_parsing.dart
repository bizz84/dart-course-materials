extension NumberParsing on String {
  int? toIntOrNull() => int.tryParse(this);
}

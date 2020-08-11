import 'dart:io';

void main(List<String> arguments) {
  if (arguments.length != 1) {
    print('Syntax: dart totals.dart <input-file.csv>');
    return;
  }
  final inputFile = arguments.first;
  final lines = File(inputFile).readAsLinesSync();
  final dataByTag = <String, double>{};
  // Remove header
  lines.removeAt(0);
  var totalDuration = 0.0;
  for (var line in lines) {
    final components = line.split(',');
    final durationStr = components[3].replaceAll('"', '');
    final duration = double.parse(durationStr);
    final tag = components[5].replaceAll('"', '');
    if (dataByTag[tag] == null) {
      dataByTag[tag] = duration;
    } else {
      dataByTag[tag] += duration;
    }
    totalDuration += duration;
  }
  for (var tag in dataByTag.keys) {
    final durationFormatted = dataByTag[tag].toStringAsFixed(1);
    final key = tag == '' ? 'Unallocated' : tag;
    print('$key: ${durationFormatted}h');
  }
  print('Total for all tags: ${totalDuration.toStringAsFixed(1)}');
}

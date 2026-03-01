List<double> convertToF(List<double> temperaturesInC) {
  List<double> mappedList = temperaturesInC.map((item) => ((item * (9/5) + 32) * 100).round() / 100).toList();
  return mappedList;
}

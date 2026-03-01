double calculateArea(double height, double base) {
  final double roundedArea = ((base * height / 2) * 100).round() / 100;
  return roundedArea;
}

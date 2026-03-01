int add(int a, int b) {
  return a + b;
}

int sub(int a, int b) {
  return a - b;
}

String showFunc(int a, int b) {
  String strResultAdd = add(a, b).toString();
  String strResultSub = sub(a, b).toString();
  String strA = a.toString();
  String strB = b.toString();
  return "Add " + strA + " + " + strB + " = " + strResultAdd + "\nSub " + strA + " - " + strB + " = " + strResultSub;
}

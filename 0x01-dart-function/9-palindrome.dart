bool isPalindrome(String s) {
  String substringDebut = "";
  String substringFin = "";
  int length = 0;

  if (s.length < 3) {
    return false;
  }

  length = (s.length / 2).round();
  substringDebut = s.substring(0, length);
  substringFin = s.substring(length - 1, s.length);

  for (int i = 0; i < length; i++) {
    if (substringDebut[i] != substringFin[length - 1 - i]) {
      return false;
    }
  }

  return true;
}

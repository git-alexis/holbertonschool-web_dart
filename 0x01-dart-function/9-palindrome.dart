bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }

  int length = s.length ~/ 2;

  for (int i = 0; i < length; i++) {
    if (s[i] != s[s.length - 1 - i]) {
      return false;
    }
  }

  return true;
}

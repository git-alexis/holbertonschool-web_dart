String longestUniqueSubstring(String str) {
  List<String> listSubstrings = [""];
  List<String> characters = [];
  List<int> listLength = [0];
  String currentSubstring = "";
  String lastSubstring = "";
  int length = 0;

  for(int i = 0; i < str.length; i++) {
    if (characters.contains(str[i])) {
      listSubstrings.add(currentSubstring);
      listLength.add(length);

      if (listLength[listSubstrings.indexOf(lastSubstring)] < length) {
        lastSubstring = currentSubstring;
      }

      characters = [];
      currentSubstring = "";
      length = 0;
    }

    characters.add(str[i]);
    currentSubstring += str[i];
    length += 1;
  }

  if (listLength[listSubstrings.indexOf(lastSubstring)] < length) {
    lastSubstring = currentSubstring;
  }

  return lastSubstring;
}

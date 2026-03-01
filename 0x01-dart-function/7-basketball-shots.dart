int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
  int resultA =
      (teamA["Free throws"] ?? 0) +
      (teamA["2 pointers"] ?? 0) * 2 +
      (teamA["3 pointers"] ?? 0) * 3;
  int resultB =
      (teamB["Free throws"] ?? 0) +
      (teamB["2 pointers"] ?? 0) * 2 +
      (teamB["3 pointers"] ?? 0) * 3;
  if (resultA > resultB) {
    return 1;
  }
  else if (resultA < resultB) {
    return 2;
  }
  else {
    return 0;
  }
}

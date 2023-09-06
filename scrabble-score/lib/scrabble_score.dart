// Put your code here

Map<int, List<String>> points = {
  1: ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"],
  2: ["D", "G"],
  3: ["B", "C", "M", "P"],
  4: ["F", "H", "V", "W", "Y"],
  5: ["K"],
  8: ["J", "X"],
  10: ["Q", "Z"]
};

int score(String word) {
  int result = 0;

  for (int i = 0; i < word.length; i++) {
    points.forEach((key, value) {
      if (value.contains(word[i].toUpperCase())) {
        result = result + key;
      }
    });
  }

  return result;
}

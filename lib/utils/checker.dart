class Checker {
  static bool isPalindrome(String value) {
    String noSpaceWord = '';
    String temp = '';

    for (var i = 0; i <= value.length - 1; i++) {
      if (value[i] == ' ') {
        continue;
      }
      noSpaceWord = noSpaceWord + value[i];
    }

    for (var j = noSpaceWord.length - 1; j >= 0; j--) {
      temp = temp + noSpaceWord[j];
    }

    return noSpaceWord == temp;
  }
}

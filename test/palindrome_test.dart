import 'package:flutter_test/flutter_test.dart';

void main() {
  test('isPalindrome Word', () {
    bool isPalindrome(String value) {
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

    expect(isPalindrome('kasur rusak'), isTrue);
    expect(isPalindrome('step on no pets'), isTrue);
    expect(isPalindrome('put it up'), isTrue);

    expect(isPalindrome('suitmedia'), isFalse);
    expect(isPalindrome('dion'), isFalse);
    expect(isPalindrome('lio'), isFalse);
  });
}

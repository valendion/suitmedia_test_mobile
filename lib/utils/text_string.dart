class TextString {
  static const firstPage = '/';
  static const secondPage = '/secondPage';
  static const thirdPage = '/thirdPage';

  static const imagePath = 'assets/image/';

  static const name = 'Name';
  static const palindrome = 'Palindrome';
  static const check = 'CHECK';
  static const next = 'NEXT';
  static const chooseAUser = 'Choose a User';
  static const secondScreen = 'Second Screen';
  static const thirdScreen = 'Third Screen';
  static const welcome = 'Welcome';
  static const selectedUserName = 'Selected User Name';

  static String getImage(String path) {
    return imagePath + path;
  }
}

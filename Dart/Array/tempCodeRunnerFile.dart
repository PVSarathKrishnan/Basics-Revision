void main() {
  String s = "hello world";

  bool isPalindrome(String s) {
    String r = "";
    for (var i = s.length - 1; i >= 0; i--) {
      r = r + s[i];
    }

    return (s == r);
  }

  print(isPalindrome(s));
}

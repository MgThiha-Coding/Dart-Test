void main() {
  int a = 10;
  if (a.isEven) {
    print('a is Even');
  } else {
    print('a is Odd');
  }

  // writing with ternary operator instead of if else
  (a.isEven) ? print('a is Even') : print('a is Odd');
}
